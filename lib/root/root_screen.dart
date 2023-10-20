import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:stateful_shell_route/root/root_navigation_service.dart';

/// Widget for the root/initial pages in the bottom navigation bar.
class RootScreen extends StatelessWidget {
  final RootNavigationService _navigationService;

  /// Creates a RootScreen
  const RootScreen({
    required final RootNavigationService navigationService,
    required this.label,
    required this.detailsPath,
    this.secondDetailsPath,
    super.key,
  }) : _navigationService = navigationService;

  /// The label
  final String label;

  /// The path to the detail page
  final String detailsPath;

  /// The path to another detail page
  final String? secondDetailsPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Root of section $label'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Screen $label',
                style: Theme.of(context).textTheme.titleLarge),
            const Padding(padding: EdgeInsets.all(4)),
            TextButton(
              onPressed: () => _navigationService.go(
                route: detailsPath,
                extra: optionOf('$label-XYZ'),
              ),
              child: const Text('View details'),
            ),
            const Padding(padding: EdgeInsets.all(4)),
            optionOf(secondDetailsPath).match(
              () => const SizedBox.shrink(),
              (final String secondDetailsPath) => TextButton(
                onPressed: () {
                  _navigationService.push(route: secondDetailsPath);
                },
                child: const Text('View more details'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
