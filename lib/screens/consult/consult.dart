import '../../teethy_exporter.dart';
import 'components/clinic_card.dart';
import 'components/doctor_card.dart';
import 'consult_details.dart';

class TeethyConsultancy extends StatelessWidget {
  const TeethyConsultancy({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //for you
        const SectionTitle(
          title: 'Doctors available',
          to: ConsultDetail(),
        ),

        //jobs for you
        //job cards in a row with scroll
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: doctorList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //
              final doctor = doctorList[index];

              return DoctorCard(doctor: doctor);
            },
          ),
        ),

        //sized box
        const VerticalSpacing(of: spacing8),

        //
        const SectionTitle(
          title: 'Clinics present',
          to: ConsultDetail(isClinic: true),
        ),

        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: clinicList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //
              final clinic = clinicList[index];
              return ClinicCard(clinic: clinic);
            },
          ),
        ),

        const VerticalSpacing(of: spacing32),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.to,
  });

  final String title;

  // to
  final Widget to;

  @override
  Widget build(BuildContext context) {
    final isMobile = TeethyResponsive.isMobile(context) ||
        TeethyResponsive.isSmallMobile(context) ||
        TeethyResponsive.isMediumMobile(context);

    //
    return Padding(
      padding: padding8,
      child: OpenRoute(
        to: to,
        closedBuilder: (context, action) => InkWell(
          onTap: action,
          child: Padding(
            padding: padding8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // title
                Flexible(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: teethyBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: isMobile ? 20 : 25,
                    ),
                  ),
                ),
                //
                const HorizontalSpacing(of: spacing4),

                //
                const Text(
                  'See all',
                  style: TextStyle(
                    color: teethyBlack,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
