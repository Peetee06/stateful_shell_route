import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stateful_shell_route/services/navigation/go_router.dart';
import 'package:stateful_shell_route/services/navigation/navigation_service.dart';

part 'go_router_navigation_service.g.dart';

@riverpod
NavigationServiceAggregator navigationService(final NavigationServiceRef ref) =>
    GoRouterNavigationService(goRouter: ref.watch(goRouterProvider));

class GoRouterNavigationService implements NavigationServiceAggregator {
  final GoRouter _goRouter;
  Option<StatefulNavigationShell> _navigationShell;

  GoRouterNavigationService({
    required final GoRouter goRouter,
  })  : _goRouter = goRouter,
        _navigationShell = const None();

  @override
  void go(
          {required final String route,
          final Option<String> extra = const None()}) =>
      _goRouter.go(
        route,
        extra: extra.toNullable(),
      );

  @override
  void goToTab({
    required final int index,
    final Option<bool> initialLocation = const None(),
  }) =>
      _navigationShell.fold(
        () {},
        (final StatefulNavigationShell navigationShell) =>
            navigationShell.goBranch(
          index,
          initialLocation: initialLocation.getOrElse(
            () => navigationShell.currentIndex == index,
          ),
        ),
      );

  @override
  void pop<T>({final Option<T> data = const None()}) =>
      _goRouter.pop(data.toNullable());

  @override
  void push({required final String route}) => unawaited(_goRouter.push(route));

  @override
  void updateNavigationShell({
    required final StatefulNavigationShell navigationShell,
  }) =>
      _navigationShell = optionOf(navigationShell);
}
