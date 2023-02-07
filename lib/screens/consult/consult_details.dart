import 'package:teethy/screens/consult/components/clinic_card.dart';

import '../../teethy_exporter.dart';
import 'components/doctor_card.dart';

class ConsultDetail extends StatelessWidget {
  const ConsultDetail({super.key, this.isClinic = false});

// is clinic
  final bool isClinic;

  @override
  Widget build(BuildContext context) {
    // is mobile
    final isMobile = TeethyResponsive.isMobile(context) ||
        TeethyResponsive.isSmallMobile(context) ||
        TeethyResponsive.isMediumMobile(context);

    //
    return Scaffold(
      appBar: AppBar(
        title: Text(isClinic ? 'Clinics' : 'Doctors'),
      ),
      body: GridView.extent(
        padding: const EdgeInsets.symmetric(
          horizontal: spacing8,
          vertical: spacing8,
        ),
        maxCrossAxisExtent: isMobile ? 600 : 400,
        childAspectRatio: isMobile ? (1 / 0.5) : (1 / 0.8),
        children: List.generate(
          shopItems.length,
          (index) {
            final listItem = isClinic ? clinicList[index] : doctorList[index];

            return isClinic
                ? ClinicCard(
                    clinic: listItem as Clinic,
                    isDetail: true,
                  )
                : DoctorCard(
                    doctor: listItem as Doctor,
                    isDetail: true,
                  );
          },
        ).toList(),
      ),
    );
  }
}
