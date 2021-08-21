import 'package:volana/domain/entities/i_user.dart';

abstract class IDatabaseFacade {
  // Future<Either<PlatformException, IUser>> getUser({required String uid});
  Future<IUser> getUser({required String uid});
}
