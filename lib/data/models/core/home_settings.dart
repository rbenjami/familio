import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';

part 'home_settings.freezed.dart';
part 'home_settings.g.dart';

@freezed
abstract class HomeSettings with _$HomeSettings {
  // ignore: invalid_annotation_target
  @firestoreSerializable
  const factory HomeSettings({required bool allowMemberInvite}) = _HomeSettings;

  factory HomeSettings.fromJson(Map<String, Object?> json) =>
      _$HomeSettingsFromJson(json);
}
