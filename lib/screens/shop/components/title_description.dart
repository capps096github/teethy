import '../../../teethy_exporter.dart';

class TitleDescription extends StatelessWidget {
  const TitleDescription({
    super.key,
    required this.shopItem,
  });

  final ShopItem shopItem;

  @override
  Widget build(BuildContext context) {
    //
    return Padding(
      padding: padding8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // name
              Flexible(
                child: Text(
                  shopItem.name,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // spacing
              const HorizontalSpacing(of: spacing4),
              // price
              Text(
                ugxFormatter.format(shopItem.price),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const VerticalSpacing(of: spacing4),
          Padding(
            padding: padding4,
            child: Text(
              shopItem.description,
              maxLines: 3,
              style: const TextStyle(
                fontSize: 14,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
