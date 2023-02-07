import '../../teethy_exporter.dart';
import 'components/clinic_card.dart';
import 'components/doctor_card.dart';

class TeethyConsultancy extends StatelessWidget {
  const TeethyConsultancy({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //for you
        const Padding(
          padding: padding8,
          child: Text(
            'Doctors available',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
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

        //recently added jobs
        const Padding(
          padding: padding8,
          child: Text(
            'Clinics present',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
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
