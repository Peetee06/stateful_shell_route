import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';

abstract interface class ShellNavigationService {
  void goToTab({
    required final int index,
    final Option<bool> initialLocation = const None(),
  });
  void updateNavigationShell({
    required final StatefulNavigationShell navigationShell,
  });
}
