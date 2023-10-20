import 'package:fpdart/fpdart.dart';

abstract interface class DetailsNavigationService {
  void pop<T>({final Option<T> data = const None()});
}
