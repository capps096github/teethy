import '../../../teethy_exporter.dart';
import '../provider.dart';

//
class AddToCart extends ConsumerWidget {
  const AddToCart({
    super.key,
    required this.shopItem,
  });

  final ShopItem shopItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(cartListProvider);

    // check if item is added to cart
    final isAddedToCart = cartList.contains(shopItem);
    //
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: isAddedToCart ? teethyGreen : teethyColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(spacing8),
          bottomLeft: Radius.circular(spacing8),
        ),
      ),
      padding: padding4,
      child: IconButton(
        icon: Icon(
          isAddedToCart ? Icons.check : Icons.add_shopping_cart_outlined,
          color: teethyWhite,
        ),
        onPressed: () {
          // add to cart
          if (!isAddedToCart) {
            ref.read(cartListProvider.notifier).state = cartList + [shopItem];
          }
        },
      ),
    );
  }
}
