import '../../teethy_exporter.dart';
import 'components/teethy_tip.dart';

class TeethyTips extends StatelessWidget {
  const TeethyTips({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: spacing8,
        vertical: spacing8,
      ),
      itemCount: teethyTips.length,
      itemBuilder: (BuildContext context, int index) {
        // tip
        final tip = teethyTips[index];

        return TeeethyTip(teethyTip: tip);
      },
    );
  }
}
