import 'package:json_annotation/json_annotation.dart';
import 'package:volana/core/enums/auth_mode.dart';
import 'package:volana/core/enums/user_type.dart';
import 'package:volana/domain/entities/i_user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends IUser {
  AuthMode _mode = AuthMode.LOGIN;

  UserModel({
    required String nome,
    required String email,
    required String password,
    required List<String> ronins,
    required UserType userType,
  }) : super(
          nome: nome,
          email: email,
          ronins: ronins,
          password: password,
          userType: userType,
        );

  bool get isSignup {
    return _mode == AuthMode.SIGNUP;
  }

  bool get isLogin {
    return _mode == AuthMode.LOGIN;
  }

  void toggleMode() {
    _mode = _mode == AuthMode.LOGIN ? AuthMode.SIGNUP : AuthMode.LOGIN;
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
