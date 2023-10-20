import 'package:stateful_shell_route/details/details_navigation_service.dart';
import 'package:stateful_shell_route/root/root_navigation_service.dart';
import 'package:stateful_shell_route/shell/shell_navigation_service.dart';

abstract interface class NavigationServiceAggregator
    implements
        DetailsNavigationService,
        RootNavigationService,
        ShellNavigationService {}
