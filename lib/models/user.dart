import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required int id,
    @required String name,
    @required int age,
    @required Sex sex,
    @required String assetPath,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Sex with _$Sex {
  const factory Sex.men() = Men;
  const factory Sex.women() = Women;
  // and more..

  factory Sex.fromJson(Map<String, dynamic> json) => _$SexFromJson(json);
}
