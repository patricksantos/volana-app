import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:volana/domain/entities/i_user.dart';
import 'package:volana/domain/facades/i_auth_facade.dart';
import 'package:volana/infra/models/user_model.dart';

class AuthRepository extends IAuthFacade {
  final _auth = FirebaseAuth.instance;
  late User? user;
  late UserCredential userCredential;

  AuthRepository() {
    print('INITTTTTT');
  }

  @override
  Future<String> login({
    required String email,
    required String password,
  }) async {
    userCredential = await _auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );
    user = _auth.currentUser;
    return userCredential.user!.uid;
  }

  @override
  Future<IUser> createUser({required IUser user}) async {
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

    return userModel;
  }

  @override
  Future<void> signOut() async {
    if (user != null) {
      await _auth.signOut();
    }
  }

  @override
  Future<String> getUserFirebase() async {
    return user!.uid;
  }
}
