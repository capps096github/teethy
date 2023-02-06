import '../../teethy_exporter.dart';

import 'components/shop_card.dart';

class TeethyShop extends StatelessWidget {
  const TeethyShop({super.key});

  @override
  Widget build(BuildContext context) {
    // is mobile
    final isMobile = TeethyResponsive.isMobile(context) ||
        TeethyResponsive.isSmallMobile(context) ||
        TeethyResponsive.isMediumMobile(context);

//
    return Scaffold(
      body: Padding(
        padding: padding8,
        child: GridView.extent(
          maxCrossAxisExtent: isMobile ? 600 : 400,
          childAspectRatio: 1 / 1.1,
          children: List.generate(
            shopItems.length,
            (index) => ShopCard(
              shopItem: shopItems[index],
            ),
          ).toList(),
        ),
      ),
    );
  }
}
