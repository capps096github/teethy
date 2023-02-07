import 'package:cached_network_image/cached_network_image.dart';

import '../../../teethy_exporter.dart';

class ClinicCard extends StatelessWidget {
  const ClinicCard({
    super.key,
    required this.clinic,
    this.isDetail = false,
  });

  final Clinic clinic;

  // is detail
  final bool isDetail;

  @override
  Widget build(BuildContext context) {
    const backColor = teethyWhite;
    const textColor = teethyBlack;

    // height
    double height = 350;
    double width = 250;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: spacing8),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        splashColor: textColor,
        onTap: () {},
        child: AnimatedContainer(
          duration: quarterSeconds,
          height: height,
          width: width,
          margin: const EdgeInsets.all(2),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              //
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(spacing8),
                  clipBehavior: Clip.antiAlias,
                  child: CachedNetworkImage(
                    width: width,
                    height: height,
                    imageUrl: clinic.clinicPhoto,
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              // container with a linear gradient
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(spacing8),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      teethyTransparent,
                      teethyTransparent,
                      backColor.withOpacity(.4),
                      backColor.withOpacity(.8),
                      backColor,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // title and description
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            clinic.clinicName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: textColor,
                            ),
                          ),
                          const VerticalSpacing(of: 4),
                          Text(
                            clinic.clinicDescription,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 12,
                              color: textColor,
                            ),
                          ),
                          const VerticalSpacing(of: spacing8),

                          // button
                          // AppButton(
                          //   text: ad.callToAction,
                          //   onTap: () => linkLauncher(ad.url),
                          //   textColor: backColor,
                          //   buttonColor: textColor,
                          //   iconData: CupertinoIcons.hand_draw,
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
