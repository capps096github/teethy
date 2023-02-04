import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:teethy/screens/home/clinic.dart';

import 'doctor.dart';

class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  _ConsultState createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
//create a list of objects(apple,google,uber)
  List<Doctor> doctor = [
    Doctor(
      doctorName: 'Dr.Brighton',
      // doctorPhoto: '',
      //job description for software engineer
      doctorDescription:
          'A doctor is a licensed medical professional who diagnoses and treats various illnesses, diseases, and injuries. They typically have a medical degree and are trained to provide preventive care, medical treatments, and health advice to patients. Some common specialties of doctors include family medicine, pediatrics, surgery, neurology, and oncology. They work in a variety of settings including hospitals, clinics, private practices, and health clinics. The main goal of a doctor is to improve the health and well-being of their patients.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Smith',
      doctorDescription: 'Experienced and knowledgeable family physician.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Johnson',
      doctorDescription: 'Skilled pediatrician dedicated to children health.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Williams',
      doctorDescription: 'Compassionate and skilled surgeon.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Brown',
      doctorDescription:
          'Expert in neurology and the treatment of brain and nervous system conditions.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Davis',
      doctorDescription:
          'Specializes in the treatment and management of cancer.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Miller',
      doctorDescription: 'Trusted and experienced family doctor.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Wilson',
      doctorDescription:
          'Dedicated pediatrician with a passion for children health.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Taylor',
      doctorDescription: 'Skilled and experienced general surgeon.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Anderson',
      doctorDescription:
          'Leading expert in the treatment of neurological conditions.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Thomas',
      doctorDescription:
          'Specializes in the latest treatments for cancer patients.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Jackson',
      doctorDescription: 'Experienced and compassionate family physician.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.White',
      doctorDescription: 'Dedicated pediatrician with a gentle touch.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Harris',
      doctorDescription: 'Skilled and precise general surgeon.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Young',
      doctorDescription:
          'Leading expert in the treatment of conditions affecting the nervous system.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Allen',
      doctorDescription:
          'Specializes in the latest advances in cancer treatment.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.King',
      doctorDescription: 'Experienced and knowledgeable family doctor.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Wright',
      doctorDescription:
          'Dedicated pediatrician committed to children wellbeing.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Scott',
      doctorDescription: 'Skilled and compassionate general surgeon.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Green',
      doctorDescription:
          'Leading expert in the diagnosis and treatment of neurological conditions.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Doctor(
      doctorName: 'Dr.Baker',
      doctorDescription:
          'Specializes in the latest techniques for cancer treatment and management.',
      doctorPhoto:
          "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ),
  ];

  List<Clinic> clinic = [
    Clinic(
      clinicName: 'Grace Clinic',

      //job description for software engineer
      clinicDescription: 'A place for fine health.',
      clinicLocation: 'Kampala',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'Eden Clinic',
      clinicDescription: 'Where your health blossoms.',
      clinicLocation: 'Kampala',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'LifeCare Clinic',
      clinicDescription: 'Your partner in good health.',
      clinicLocation: 'Entebbe',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'Health Haven Clinic',
      clinicDescription: 'A safe haven for your health.',
      clinicLocation: 'Jinja',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'Wellness Clinic',
      clinicDescription: 'Total health, total wellness.',
      clinicLocation: 'Kampala',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'Healing Hands Clinic',
      clinicDescription: 'Where healing begins.',
      clinicLocation: 'Entebbe',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'Bright Health Clinic',
      clinicDescription: 'Shining a light on your health.',
      clinicLocation: 'Jinja',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'Revitalize Clinic',
      clinicDescription: 'Bringing new life to your health.',
      clinicLocation: 'Kampala',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'Vitality Clinic',
      clinicDescription: 'Your source for endless energy and health.',
      clinicLocation: 'Entebbe',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'Optimal Health Clinic',
      clinicDescription: 'Achieving optimal health, every day.',
      clinicLocation: 'Jinja',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
    Clinic(
      clinicName: 'Nourish Clinic',
      clinicDescription: 'Nourishing your body, inside and out.',
      clinicLocation: 'Kampala',
      clinicPhoto:
          "https://images.unsplash.com/photo-1616391182219-e080b4d1043a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Center(
          heightFactor: 20,
          child: Text(
            "Teethy",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //appBar

          const SizedBox(height: 50),
          //discover new path
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Welcome to Teethy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //searchbar

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      // child: Image.asset(
                      //   'assets/icons/search.png',
                      //   color: Colors.grey[600],
                      // ),
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText:
                            "Search for your favourite clinic or doctor..",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          //for you
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Doctors available',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          //jobs for you
          //job cards in a row with scroll
          Container(
            height: 200,
            // color: Colors.blue[200],
            child: Container(
              height: 100,
              child: ListView.builder(
                itemCount: doctor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Doctor(
                    //access the object from the list
                    doctorName: doctor[index].doctorName,
                    doctorPhoto: doctor[index].doctorPhoto,
                    doctorDescription: doctor[index].doctorDescription,
                  );
                },
              ),
            ),
          ),

          //sized box
          const SizedBox(
            height: 50,
          ),
          //recently added jobs
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Clinics present',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          // ...List.generate(
          //   clinic.length,
          //   (index) => Clinic(
          //       //access the objects from the list
          //       clinicName: clinic[index].clinicName,
          //       // clinicPhoto: clinic[index].clinicPhoto,
          //       clinicDescription: clinic[index].clinicDescription,
          //       clinicLocation: clinic[index].clinicLocation),
          // ),

          Container(
            height: 200,
            // color: Colors.blue[200],
            child: Container(
              height: 100,
              child: ListView.builder(
                itemCount: clinic.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Clinic(
                    //access the object from the list
                    clinicName: clinic[index].clinicName,
                    clinicPhoto: clinic[index].clinicPhoto,
                    clinicDescription: clinic[index].clinicDescription,
                    clinicLocation: clinic[index].clinicLocation,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      //bottom navigation bar for a health app with three sections
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlueAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner),
            label: 'AI Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medication),
            label: 'Consult',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Products',
          ),
        ],
        //change color of selected icon to white
        selectedItemColor: Colors.white,
      ),
    );
  }
}
//list of objects for JobForYou
