import 'package:cached_network_image/cached_network_image.dart';

import '../../teethy_exporter.dart';
import 'components/title_description.dart';

class TeethyTips extends StatelessWidget {
  const TeethyTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Healthy tips for ur teeth"),
        ),
      ),
      body: Column(
        children: [
          TipsTile(
            teethyTip: teethyTips[0],
          ),
          // for (int i = 0; i <= 3; i++) ...[
          //   Container(
          //     width: double.infinity,
          //     margin: const EdgeInsets.all(10),
          //     padding: const EdgeInsets.all(10),
          //     decoration: BoxDecoration(
          //       color: const Color.fromARGB(255, 174, 214, 246),
          //       borderRadius: BorderRadius.circular(10),
          //       boxShadow: const [
          //         BoxShadow(blurRadius: 5),
          //       ],
          //     ),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         FittedBox(
          //           child: Image.asset(
          //             "images/teeth.jpg",
          //             fit: BoxFit.fill,
          //           ),
          //         ),
          //         const Text(
          //           "I am a balanced, graceful dog of terrier-like demeanor, weighing no more than 6 pounds. My rounded apple head is a breed hallmark. The erect ears and full, luminous eyes are acutely expressive. Coats come in many colors and patterns, and can be long or short.I like attention and am loyal to my owners.Even though am considered as lap dog, am active and like to be kept occupied.",
          //           style:
          //               TextStyle(wordSpacing: 3, fontWeight: FontWeight.w500),
          //         ),
          //       ],
          //     ),
          //   ),
          //   const SizedBox(),
          // ]
        ],
      ),
    );
  }
}

class TipsTile extends StatelessWidget {
  const TipsTile({super.key, required this.teethyTip});
  final Tip teethyTip;

  @override
  Widget build(BuildContext context) {
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
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(spacing8),
              topLeft: Radius.circular(spacing8),
            ),
            clipBehavior: Clip.antiAlias,
            child: CachedNetworkImage(
              imageUrl: teethyTip.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          //
          const VerticalSpacing(of: spacing4),

          //
          TipTitleDescription(teethyTip: teethyTip),
        ],
      ),
    );
  }
}
