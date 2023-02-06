import 'package:cached_network_image/cached_network_image.dart';

import '../../../teethy_exporter.dart';
import 'title_description.dart';

class ShopCardContent extends StatelessWidget {
  const ShopCardContent({
    super.key,
    required this.shopItem,
  });

  final ShopItem shopItem;

  @override
  Widget build(BuildContext context) {
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
      child: ExpandedScrollingColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: shopItem.name,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(spacing8),
                topLeft: Radius.circular(spacing8),
              ),
              clipBehavior: Clip.antiAlias,
              child: CachedNetworkImage(
                imageUrl: shopItem.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const VerticalSpacing(of: spacing4),
          TitleDescription(shopItem: shopItem),
          const VerticalSpacing(of: spacing4),
        ],
      ),
    );
  }
}
