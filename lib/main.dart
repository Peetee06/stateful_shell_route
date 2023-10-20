// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stateful_shell_route/services/navigation/go_router.dart';

// This example demonstrates how to setup nested navigation using a
// BottomNavigationBar, where each bar item uses its own persistent navigator,
// i.e. navigation state is maintained separately for each item. This setup also
// enables deep linking into nested pages.

void main() {
  runApp(const NestedTabNavigationExampleApp());
}

/// An example demonstrating how to use nested navigators
class NestedTabNavigationExampleApp extends StatelessWidget {
  /// Creates a NestedTabNavigationExampleApp
  const NestedTabNavigationExampleApp({super.key});

  @override
  Widget build(BuildContext context) => ProviderScope(
        child: Consumer(
          builder: (
            final _,
            final WidgetRef ref,
            final __,
          ) =>
              MaterialApp.router(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              useMaterial3: true,
            ),
            routerConfig: ref.watch(goRouterProvider),
          ),
        ),
      );
}
