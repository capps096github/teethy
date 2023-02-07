import 'package:cached_network_image/cached_network_image.dart';

import '../../../teethy_exporter.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  const DoctorCard({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding8,
      margin: margin8,
      decoration: BoxDecoration(
        color: teethyWhite,
        borderRadius: borderRadius8,
      ),
      height: 150,
      width: 300,
      child: ExpandedScrollingColumn(
        children: [
          Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(spacing8),
                  clipBehavior: Clip.antiAlias,
                  child: CachedNetworkImage(
                    imageUrl: doctor.doctorPhoto,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const HorizontalSpacing(of: spacing4),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    doctor.doctorName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const VerticalSpacing(of: spacing8),
          Text(
            doctor.doctorDescription,
            maxLines: 3,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
