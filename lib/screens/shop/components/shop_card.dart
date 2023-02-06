import '../../../teethy_exporter.dart';
import 'add_to_cart.dart';
import 'shop_card_content.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    super.key,
    required this.shopItem,
  });

  //
  final ShopItem shopItem;

  @override
  Widget build(BuildContext context) {
    return OpenRoute(
      routePath: "detail",
      to: ShopDetail(shopItem: shopItem),
      closedBorderRadius: BorderRadius.zero,
      closedBuilder: (context, openVisitedSite) => SizedBox(
        height: 300,
        child: Stack(
          children: [
            // item
            ShopCardContent(shopItem: shopItem),

            // add to cart
            Positioned(
              top: spacing4,
              right: spacing4,
              child: AddToCart(
                shopItem: shopItem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
