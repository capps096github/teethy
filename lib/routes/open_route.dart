// Project imports:

import '../teethy_exporter.dart';

///An animation wrapper around [OpenContainer]
class OpenRoute extends StatelessWidget {
  const OpenRoute({
    Key? key,
    required this.to,
    required this.closedBuilder,
    this.openColor = teethyColor,
    this.closedColor = teethyTransparent,
    required this.routePath,
    this.closedBorderRadius,
    this.closedShape,
  }) : super(key: key);

  final String routePath;
  final Color openColor, closedColor;

  ///The Widget we are navigating to
  final Widget to;

  // border radius for the closed container
  final BorderRadius? closedBorderRadius;

  final ShapeBorder? closedShape;

  ///The builder for the closed container
  final CloseContainerBuilder closedBuilder;
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openBuilder: (context, _) => to,
      openColor: openColor,
      useRootNavigator: true,
      //*closed
      closedColor: closedColor,
      clipBehavior: Clip.antiAlias,
      closedElevation: 0,
      closedShape: closedShape ??
          RoundedRectangleBorder(
            borderRadius: closedBorderRadius ??
                const BorderRadius.all(Radius.circular(spacing8)),
          ),
      closedBuilder: closedBuilder,
      routeSettings: RouteSettings(name: routePath),
    );
  }
}
