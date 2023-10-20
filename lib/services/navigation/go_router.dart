import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stateful_shell_route/details/details_screen.dart';
import 'package:stateful_shell_route/root/root_screen.dart';
import 'package:stateful_shell_route/services/navigation/go_router_navigation_service.dart';
import 'package:stateful_shell_route/services/navigation/navigation_service.dart';
import 'package:stateful_shell_route/shell/shell_controller_implementation.dart';
import 'package:stateful_shell_route/shell/shell_view.dart';

part 'go_router.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

@riverpod
GoRouter goRouter(final GoRouterRef ref) => GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/a',
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (
            final _,
            final __,
            final StatefulNavigationShell navigationShell,
          ) =>
              Consumer(
            builder: (
              final _,
              final WidgetRef ref,
              final __,
            ) {
              final NavigationServiceAggregator navigationService =
                  ref.watch(navigationServiceProvider)
                    ..updateNavigationShell(
                      navigationShell: navigationShell,
                    );
              final provider = shellControllerImplementationProvider(
                navigationService: navigationService,
              );
              return ShellView(
                controller: ref.watch(provider.notifier),
                model: ref.watch(provider),
                child: navigationShell,
              );
            },
          ),
          branches: <StatefulShellBranch>[
            // The route branch for the first tab of the bottom navigation bar.
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  // The screen to display as the root in the first tab of the
                  // bottom navigation bar.
                  path: '/a',
                  builder: (BuildContext context, GoRouterState state) =>
                      Consumer(
                    builder: (_, final WidgetRef ref, __) => RootScreen(
                      label: 'A',
                      detailsPath: '/a/details',
                      navigationService: ref.watch(navigationServiceProvider),
                    ),
                  ),
                  routes: <RouteBase>[
                    // The details screen to display stacked on navigator of the
                    // first tab. This will cover screen A but not the application
                    // shell (bottom navigation bar).
                    GoRoute(
                      path: 'details',
                      builder: (BuildContext context, GoRouterState state) =>
                          Consumer(
                        builder: (_, final WidgetRef ref, __) => DetailsScreen(
                          label: 'A',
                          navigationService:
                              ref.watch(navigationServiceProvider),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // The route branch for the second tab of the bottom navigation bar.
            StatefulShellBranch(
              // It's not necessary to provide a navigatorKey if it isn't also
              // needed elsewhere. If not provided, a default key will be used.
              routes: <RouteBase>[
                GoRoute(
                  // The screen to display as the root in the second tab of the
                  // bottom navigation bar.
                  path: '/b',
                  builder: (BuildContext context, GoRouterState state) =>
                      Consumer(
                    builder: (_, final WidgetRef ref, __) => RootScreen(
                      label: 'B',
                      detailsPath: '/b/details/1',
                      // secondDetailsPath: '/b/details/2',
                      secondDetailsPath: '/outside',
                      navigationService: ref.watch(navigationServiceProvider),
                    ),
                  ),
                  routes: <RouteBase>[
                    GoRoute(
                      path: 'details/:param',
                      builder: (BuildContext context, GoRouterState state) =>
                          Consumer(
                        builder: (_, final WidgetRef ref, __) => DetailsScreen(
                          label: 'B',
                          param: state.pathParameters['param'],
                          withScaffold: !(int.tryParse(
                                  state.pathParameters['param'] ?? '') ==
                              2),
                          navigationService:
                              ref.watch(navigationServiceProvider),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // The route branch for the third tab of the bottom navigation bar.
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  // The screen to display as the root in the third tab of the
                  // bottom navigation bar.
                  path: '/c',
                  builder: (BuildContext context, GoRouterState state) =>
                      Consumer(
                    builder: (_, final WidgetRef ref, __) => RootScreen(
                      label: 'C',
                      detailsPath: '/c/details',
                      secondDetailsPath: '/outside',
                      navigationService: ref.watch(navigationServiceProvider),
                    ),
                  ),
                  routes: <RouteBase>[
                    GoRoute(
                      path: 'details',
                      builder: (BuildContext context, GoRouterState state) =>
                          Consumer(
                        builder: (_, final WidgetRef ref, __) => DetailsScreen(
                          label: 'C',
                          extra: state.extra,
                          navigationService:
                              ref.watch(navigationServiceProvider),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/outside',
          // parentNavigatorKey: _rootNavigatorKey,
          builder: (BuildContext context, GoRouterState state) => Consumer(
            builder: (_, final WidgetRef ref, __) => DetailsScreen(
              label: 'Outside the shell',
              param: 'outsideParam',
              navigationService: ref.watch(navigationServiceProvider),
            ),
          ),
        ),
      ],
    );
