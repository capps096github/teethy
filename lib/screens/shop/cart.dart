import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:teethy/screens/shop/provider.dart';

import '../../teethy_exporter.dart';

class TeethyCart extends ConsumerWidget {
  const TeethyCart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(cartListProvider);

// if empty
    final isCartEmpty = cartList.isEmpty;

    final cartItems = ref.watch(cartListProvider).length.toString();

    //
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart:- ($cartItems items)"),
      ),
      body: isCartEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  CupertinoIcons.cube_box,
                  color: teethyColor,
                  size: 300,
                ),

                //
                VerticalSpacing(of: spacing8),

                // empty cart
                Text(
                  "Cart is empty, Add some items and they'll appear here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: teethyColor,
                    fontSize: 15,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: cartList.length,
              itemBuilder: (BuildContext context, int index) {
                // cart item
                final cartItem = cartList[index];

                //
                return Container(
                  margin: padding4,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: teethyWhite,
                    borderRadius: BorderRadius.circular(spacing8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      // image
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(spacing8),
                          clipBehavior: Clip.antiAlias,
                          child: CachedNetworkImage(
                            imageUrl: cartItem.imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      //
                      const HorizontalSpacing(of: spacing4),

                      // title and description
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cartItem.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const VerticalSpacing(of: spacing2),
                            Text(
                              ugxFormatter.format(cartItem.price),
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // trailing
                      Container(
                        color: teethyRed,
                        height: 100,
                        child: IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: teethyWhite,
                          ),
                          onPressed: () {
                            // remove item from cart
                            ref.read(cartListProvider.notifier).state = cartList
                                .where((element) => element != cartItem)
                                .toList();
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
            ),

      // checkout button
      bottomNavigationBar: isCartEmpty
          ? null
          : Container(
              color: teethyColor,
              height: 60,
              child: Padding(
                padding: padding8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // total price
                    Expanded(
                      child: Text(
                        ugxFormatter.format(cartList.fold(
                            0, (total, current) => total + current.price)),
                        style: const TextStyle(
                          fontSize: 20,
                          color: teethyWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // checkout button
                    Expanded(
                      child: AppButton(
                        buttonColor: teethyWhite,
                        textColor: teethyColor,
                        onTap: () {
                          // clear cart
                          ref.read(cartListProvider.notifier).state = [];
                        },
                        text: "Checkout",
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
