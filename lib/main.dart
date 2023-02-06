<<<<<<< Updated upstream
import 'teethy_exporter.dart';
=======
import 'package:flutter/material.dart';
import 'screens/home/consult.dart';
>>>>>>> Stashed changes

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //
  runApp(
    const ProviderScope(
      child: Teethy(),
    ),
  );
}
