import 'package:flutter/material.dart';
import 'package:stateful_shell_route/shell/mvc_view.dart';
import 'package:stateful_shell_route/shell/shell_controller.dart';
import 'package:stateful_shell_route/shell/shell_model.dart';

class ShellView extends MvcView<ShellController, ShellModel> {
  final Widget _child;

  const ShellView({
    required final Widget child,
    required super.controller,
    required super.model,
    super.key,
  }) : _child = child;

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: _child,
        bottomNavigationBar: BottomNavigationBar(
          // Here, the items of BottomNavigationBar are hard coded. In a real
          // world scenario, the items would most likely be generated from the
          // branches of the shell route, which can be fetched using
          // `navigationShell.route.branches`.
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Section A'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Section B'),
            BottomNavigationBarItem(icon: Icon(Icons.tab), label: 'Section C'),
          ],
          currentIndex: model.selectedBottomTabIndex,
          onTap: (int index) =>
              controller.updateSelectedBottomTabIndex(index: index),
        ),
      );
}
