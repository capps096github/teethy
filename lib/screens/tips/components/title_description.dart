import '../../../teethy_exporter.dart';

class TipTitleDescription extends StatelessWidget {
  const TipTitleDescription({
    super.key,
    required this.teethyTip,
  });

  final Tip teethyTip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            teethyTip.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const VerticalSpacing(of: spacing4),
          Text(
            teethyTip.description,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
