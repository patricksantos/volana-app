import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:volana/domain/entities/i_user.dart';

abstract class IAuthFacade {
  Future<Either<PlatformException, String>> login(
      {required String email, required String password});
  Future<Either<PlatformException, IUser>> createUser({required IUser user});
  Future<Either<PlatformException, void>> disconnect();
}
