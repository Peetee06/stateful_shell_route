import 'package:flutter/material.dart';

abstract class MvcView<C, M> extends StatefulWidget {
  final M model;
  final C controller;

  const MvcView({super.key, required this.model, required this.controller});

  Widget build(final BuildContext context);

  @override
  State<StatefulWidget> createState() => _MvcViewState<C, M>();
}

class _MvcViewState<C, M> extends State<MvcView<C, M>> {
  @override
  Widget build(final BuildContext context) => widget.build(context);
}
