import '../../teethy_exporter.dart';

class CommunityAuth extends StatelessWidget {
  const CommunityAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: teethyWhite,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: padding16,
              child: Image.asset(authImage),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: teethyColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(spacing40),
                  topRight: Radius.circular(spacing40),
                ),
              ),
              child: Column(
                children: const [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
