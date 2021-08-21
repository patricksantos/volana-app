import 'package:volana/domain/entities/i_user.dart';

abstract class IAuthFacade {
  Future<String> login({required String email, required String password});
  Future<IUser> createUser({required IUser user});
  Future<void> signOut();
  Future<String> getUserFirebase();
  // Future<Either<PlatformException, String>> login(
  //     {required String email, required String password});
  // Future<Either<PlatformException, IUser>> createUser({required IUser user});
  // Future<Either<PlatformException, String>> signOut();
  // Future<Either<PlatformException, String>> getUserFirebase();
}
