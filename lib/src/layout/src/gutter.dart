import 'package:flextrix/src/gap/src/widgets/gap.dart';
import 'package:flextrix/src/gap/src/widgets/sliver_gap.dart';
import 'package:flextrix/src/layout/src/layout.dart';
import 'package:flutter/material.dart';

class Gutter extends StatelessWidget {
  final double? extent;
  const Gutter([
    this.extent,
    Key? key,
  ]) : super(key: key);

  static List<Widget> separateChildren({
    required List<Widget> children,
    double? extent,
  }) =>
      children.separate(extent);

  @override
  Widget build(BuildContext context) {
    return Gap(extent ?? context.layout.gutter);
  }
}

class SliverGutter extends StatelessWidget {
  final double? extent;
  const SliverGutter([
    this.extent,
    Key? key,
  ]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGap(extent ?? context.layout.gutter);
  }
}

extension ListGutter on List<Widget> {
  List<Widget> separate(double? extend) => length <= 1
      ? this
      : sublist(1).fold(
          [first],
          (r, element) => [...r, Gutter(extend), element],
        );
}
