import 'package:cached_network_image/cached_network_image.dart';

import '../../../teethy_exporter.dart';
import 'title_description.dart';

class TipsTile extends StatelessWidget {
  const TipsTile({super.key, required this.teethyTip});
  final Tip teethyTip;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
        const VerticalSpacing(of: spacing4),

        //
        TipTitleDescription(teethyTip: teethyTip),
      ],
    );
  }
}
