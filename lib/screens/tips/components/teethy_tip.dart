import '../../../teethy_exporter.dart';
import 'tips_tile.dart';
import 'tips_tile_web.dart';

class TeeethyTip extends StatelessWidget {
  const TeeethyTip({super.key, required this.teethyTip});
  final Tip teethyTip;

  @override
  Widget build(BuildContext context) {
    final isMobile = TeethyResponsive.isMobile(context) ||
        TeethyResponsive.isSmallMobile(context) ||
        TeethyResponsive.isMediumMobile(context);

    //
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: margin4,
      decoration: BoxDecoration(
        color: teethyWhite,
        borderRadius: borderRadius8,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: spacing8,
            offset: Offset(0, spacing4),
          ),
        ],
      ),
      child: isMobile
          ? TipsTile(teethyTip: teethyTip)
          : TipsTileWeb(teethyTip: teethyTip),
    );
  }
}
