import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:volana/domain/entities/i_user.dart';
import 'package:volana/domain/facades/i_auth_facade.dart';
import 'package:volana/infra/models/user_model.dart';

class AuthRepository extends IAuthFacade {
  final _auth = FirebaseAuth.instance;
  late UserCredential userCredential;

  @override
  Future<Either<PlatformException, String>> login(
      {required String email, required String password}) async {
    try {
      userCredential = await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      return Right(userCredential.user!.uid);
    } on PlatformException catch (err) {
      return Left(err);
    }
  }

  @override
  Future<Either<PlatformException, IUser>> createUser(
      {required IUser user}) async {
    try {
      userCredential = await _auth.createUserWithEmailAndPassword(
        email: user.email.trim(),
        password: user.password,
      );

      final userModel = UserModel(
        email: user.email,
        password: user.password,
        nome: user.nome,
        userType: user.userType,
        ronins: user.ronins,
      );

      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(userModel.toJson());

      return Right(userModel);
    } on PlatformException catch (err) {
      return Left(err);
    }
  }

  @override
  Future<Either<PlatformException, void>> disconnect() async {
    try {
      await _auth.signOut();
      return const Right(null);
    } on PlatformException catch (err) {
      return Left(err);
    }
  }
}
