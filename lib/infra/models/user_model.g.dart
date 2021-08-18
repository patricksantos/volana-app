// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      nome: json['nome'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      ronins:
          (json['ronins'] as List<dynamic>).map((e) => e as String).toList(),
      userType: _$enumDecode(_$UserTypeEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'nome': instance.nome,
      'email': instance.email,
      'password': instance.password,
      'ronins': instance.ronins,
      'userType': _$UserTypeEnumMap[instance.userType],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$UserTypeEnumMap = {
  UserType.ADMINISTRADOR: 'ADMINISTRADOR',
  UserType.INVESTIDOR: 'INVESTIDOR',
  UserType.JOGADOR: 'JOGADOR',
};
