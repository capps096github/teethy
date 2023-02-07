import 'package:cached_network_image/cached_network_image.dart';

import '../../../teethy_exporter.dart';
import '../components/title_description.dart';
import '../provider.dart';

class ShopDetail extends StatelessWidget {
  const ShopDetail({super.key, required this.shopItem});
  final ShopItem shopItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shopItem.name),
        leading: const BackButton(),
      ),
      body: ListView(
        children: [
          //image
          Hero(
            tag: shopItem.name,
            child: CachedNetworkImage(
              imageUrl: shopItem.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          const VerticalSpacing(of: spacing4),
          TitleDescription(shopItem: shopItem),
        ],
      ),
      bottomNavigationBar: DetailAddToCart(shopItem: shopItem),
    );
  }
}

class DetailAddToCart extends ConsumerWidget {
  const DetailAddToCart({
    super.key,
    required this.shopItem,
  });
  final ShopItem shopItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(cartListProvider);

    // check if item is added to cart
    final isAddedToCart = cartList.contains(shopItem);

    return Consumer(
      builder: (context, ref, child) {
        return Container(
          padding: padding8,
          child: AppButton(
            buttonColor: isAddedToCart ? teethyGreen : teethyColor,
            text: isAddedToCart ? "Added To Cart" : "Add To Cart",
            onTap: () {
              // add to cart
              if (!isAddedToCart) {
                ref.read(cartListProvider.notifier).state =
                    cartList + [shopItem];
              }
            },
            iconData: isAddedToCart ? Icons.check : Icons.add_shopping_cart,
          ),
        );
      },
    );
  }
}
