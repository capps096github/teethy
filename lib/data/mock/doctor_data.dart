//create a list of objects(apple,google,uber)
import '../models/doctor.dart';

List<Doctor> doctorList = [
  Doctor(
    doctorName: 'Dr.Brighton',
    // doctorPhoto: '',
    //job description for software engineer
    doctorDescription:
        'A doctor is a licensed medical professional who diagnoses and treats various illnesses, diseases, and injuries. They typically have a medical degree and are trained to provide preventive care, medical treatments, and health advice to patients. Some common specialties of doctors include family medicine, pediatrics, surgery, neurology, and oncology. They work in a variety of settings including hospitals, clinics, private practices, and health clinics. The main goal of a doctor is to improve the health and well-being of their patients.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8RE9DVE9SUyUyMEFORCUyME5VUlNFU3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
  ),
  Doctor(
    doctorName: 'Dr.Smith',
    doctorDescription: 'Experienced and knowledgeable family physician.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1618498082410-b4aa22193b38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8RE9DVE9SUyUyMEFORCUyME5VUlNFU3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
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
        "https://images.unsplash.com/photo-1537368910025-700350fe46c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  ),
  Doctor(
    doctorName: 'Dr.Brown',
    doctorDescription:
        'Expert in neurology and the treatment of brain and nervous system conditions.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1622902046580-2b47f47f5471?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  ),
  Doctor(
    doctorName: 'Dr.Davis',
    doctorDescription: 'Specializes in the treatment and management of cancer.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1622902046580-2b47f47f5471?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
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
        "https://images.unsplash.com/photo-1622902046580-2b47f47f5471?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  ),
  Doctor(
    doctorName: 'Dr.Anderson',
    doctorDescription:
        'Leading expert in the treatment of neurological conditions.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1623854766464-c3645e6841d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  ),
  Doctor(
    doctorName: 'Dr.Thomas',
    doctorDescription:
        'Specializes in the latest treatments for cancer patients.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1623854766464-c3645e6841d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
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
        "https://images.unsplash.com/photo-1623854767680-54012051b1f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
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
        "https://images.unsplash.com/photo-1623854767680-54012051b1f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  ),
  Doctor(
    doctorName: 'Dr.Allen',
    doctorDescription:
        'Specializes in the latest advances in cancer treatment.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1645066928295-2506defde470?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTJ8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  ),
  Doctor(
    doctorName: 'Dr.King',
    doctorDescription: 'Experienced and knowledgeable family doctor.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1620928269189-dc4ee9d981c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTR8fERPQ1RPUlMlMjBBTkQlMjBOVVJTRVN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
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
        "https://plus.unsplash.com/premium_photo-1661544768241-761f1b029100?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAyfHxET0NUT1JTJTIwQU5EJTIwTlVSU0VTfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  ),
  Doctor(
    doctorName: 'Dr.Green',
    doctorDescription:
        'Leading expert in the diagnosis and treatment of neurological conditions.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1662732899935-2a702a214b95?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHxET0NUT1JTJTIwQU5EJTIwTlVSU0VTfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  ),
  Doctor(
    doctorName: 'Dr.Baker',
    doctorDescription:
        'Specializes in the latest techniques for cancer treatment and management.',
    doctorPhoto:
        "https://images.unsplash.com/photo-1642976482503-3f67b345dbac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE3fHxET0NUT1JTJTIwQU5EJTIwTlVSU0VTfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  ),
  Doctor(
    doctorName: 'Dr.Xephas',
    doctorDescription:
        'Specializes in the latest techniques for cancer treatment and management.',
    doctorPhoto:
        "https://plus.unsplash.com/premium_photo-1661740522592-d6e7ebc799e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fEJMQUNLJTIwZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  ),
];
