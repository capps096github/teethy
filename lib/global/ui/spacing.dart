// Flutter imports:
import 'package:flutter/material.dart';

class VerticalSpacing extends StatelessWidget {
  ///Adds space vertically
  const VerticalSpacing({Key? key, required this.of}) : super(key: key);
  final double of;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: of);
  }
}

///Adds space vertically in Sliver Widgets
class SliverVerticalSpacing extends StatelessWidget {
  const SliverVerticalSpacing({Key? key, required this.of}) : super(key: key);
  final double of;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: SizedBox(height: of));
  }
}

class HorizontalSpacing extends StatelessWidget {
  ///Adds space Horizontally
  const HorizontalSpacing({Key? key, required this.of}) : super(key: key);
  final double of;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: of);
  }
}

class EmptySpace extends StatelessWidget {
  ///Empty space
  const EmptySpace({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class SliverEmptySpace extends StatelessWidget {
  ///Sliver Empty Space
  const SliverEmptySpace({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(child: EmptySpace());
  }
}
