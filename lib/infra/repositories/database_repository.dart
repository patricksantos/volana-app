import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:volana/core/enums/user_type.dart';
import 'package:volana/domain/entities/i_user.dart';
import 'package:volana/domain/facades/i_database_facade.dart';
import 'package:volana/infra/models/user_model.dart';

class DatabaseRepository extends IDatabaseFacade {
  final _firebase = FirebaseFirestore.instance;

  @override
  Future<IUser> getUser({required String uid}) async {
    final snapshot = await _firebase.collection('users').doc(uid).get();
    List<dynamic> ronins = snapshot['ronins'];

    final userModel = UserModel(
      nome: snapshot['nome'],
      email: snapshot['email'],
      password: snapshot['password'],
      ronins: ronins.cast<String>(),
      userType: snapshot['userType'] == 'ADMINISTRADOR'
          ? UserType.ADMINISTRADOR
          : snapshot['userType'] == 'INVESTIDOR'
              ? UserType.INVESTIDOR
              : UserType.JOGADOR,
    );

    return userModel;
  }
}
