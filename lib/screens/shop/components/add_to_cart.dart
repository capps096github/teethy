import '../../../teethy_exporter.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key, required this.shopItem,
  });
  final ShopItem shopItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: teethyColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(spacing8),
          bottomLeft: Radius.circular(spacing8),
        ),
      ),
      padding: padding4,
      child: IconButton(
        icon: const Icon(
          Icons.add_shopping_cart,
          color: teethyWhite,
        ),
        onPressed: () {},
      ),
    );
  }
}
