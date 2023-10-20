import 'package:freezed_annotation/freezed_annotation.dart';

part 'shell_model.freezed.dart';

@freezed
class ShellModel with _$ShellModel {
  const factory ShellModel({
    required final int selectedBottomTabIndex,
  }) = _ShellModel;
}
