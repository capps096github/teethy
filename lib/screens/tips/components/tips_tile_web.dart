import 'package:cached_network_image/cached_network_image.dart';

import '../../../teethy_exporter.dart';
import 'title_description.dart';

class TipsTileWeb extends StatelessWidget {
  const TipsTileWeb({super.key, required this.teethyTip});
  final Tip teethyTip;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Hero(
            tag: "xx",
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(spacing8),
                topLeft: Radius.circular(spacing8),
              ),
              clipBehavior: Clip.antiAlias,
              child: CachedNetworkImage(
                imageUrl: teethyTip.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        //
        const HorizontalSpacing(of: spacing4),

        //
        Flexible(child: TipTitleDescription(teethyTip: teethyTip)),
      ],
    );
  }
}
