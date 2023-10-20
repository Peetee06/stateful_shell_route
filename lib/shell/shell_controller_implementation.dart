import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stateful_shell_route/shell/shell_controller.dart';
import 'package:stateful_shell_route/shell/shell_model.dart';
import 'package:stateful_shell_route/shell/shell_navigation_service.dart';

part 'shell_controller_implementation.g.dart';

@riverpod
class ShellControllerImplementation extends _$ShellControllerImplementation
    implements ShellController {
  @override
  ShellModel build({required final ShellNavigationService navigationService}) =>
      const ShellModel(selectedBottomTabIndex: 0);

  @override
  void updateSelectedBottomTabIndex({required final int index}) {
    state = state.copyWith(selectedBottomTabIndex: index);
    navigationService.goToTab(
      index: index,
    );
  }
}
