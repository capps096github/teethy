import 'package:cached_network_image/cached_network_image.dart';

import '../../../teethy_exporter.dart';
import '../components/title_description.dart';

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
      body: Column(
        children: [
          //image
          Hero(
            tag: shopItem.name,
            child: CachedNetworkImage(
              imageUrl: shopItem.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          // title

          const VerticalSpacing(of: spacing4),
          TitleDescription(shopItem: shopItem),
          // description

          // price
          // button
        ],
      ),
      bottomNavigationBar: Container(
        padding: padding8,
        child: AppButton(
          text: "Add To Cart",
          onTap: () {},
          iconData: Icons.add_shopping_cart,
        ),
      ),
    );
  }
}
