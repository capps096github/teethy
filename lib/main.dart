// import 'teethy_exporter.dart';
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   //
//   runApp(
//     const ProviderScope(
//       child: Teethy(),
//     ),
//   );
// }
import 'package:flutter/material.dart';
import 'screens/home/consult.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Consult(),
    );
  }
}
