import 'package:fpdart/fpdart.dart';

abstract interface class RootNavigationService {
  void go({
    required String route,
    final Option<String> extra = const None(),
  });
  void push({required String route});
}
