import 'package:flutter/cupertino.dart';

import '../../teethy_exporter.dart';
import '../shop/cart.dart';
import '../shop/provider.dart';
import 'navbar/navbar.dart';
import 'pages/pages_data.dart';
import 'providers.dart';

class TeethyHome extends ConsumerWidget {
  const TeethyHome({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final navBarIndex = ref.watch(navbarIndexProvider);

    // is shop
    final isShop = navBarIndex == 1;

    return Scaffold(
      appBar: AppBar(
        title: Text("Teethy ${homePages[navBarIndex].label}"),
        actions: [
          if (isShop)
            OpenRoute(
              to: const TeethyCart(),
              closedShape: const CircleBorder(),
              closedBuilder: (context, action) => Padding(
                padding: padding4,
                child: Stack(
                  children: [
                    //
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.bag_fill,
                        color: teethyWhite,
                      ),
                      onPressed: action,
                    ),

                    // counter
                    Positioned(
                      top: spacing2,
                      right: spacing2,
                      child: Container(
                        color: teethyRed,
                        padding: padding2,
                        child: Text(
                          ref.watch(cartListProvider).length.toString(),
                          style: const TextStyle(
                            color: teethyWhite,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      body: HomePages(navBarIndex: navBarIndex),
      bottomNavigationBar: const HomeNavbar(),
    );
  }
}

class HomePages extends ConsumerWidget {
  const HomePages({
    Key? key,
    required this.navBarIndex,
  }) : super(key: key);
// int
  final int navBarIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageTransitionSwitcher(
      transitionBuilder: (child, animation, secondaryAnimation) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          fillColor: teethyTransparent,
          child: child,
        );
      },
      duration: halfSeconds,
      child: homePages[navBarIndex].screen,
    );
  }
}
