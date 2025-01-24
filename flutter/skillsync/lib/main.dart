import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:skillsync/screens/profilescreen.dart';
import 'package:skillsync/screens/settingsscreen.dart';
import 'firebase_options.dart';
import 'screens/signupscreen.dart';
import 'screens/loginscreen.dart';
import 'screens/mainscreen.dart';
import 'screens/mentorsScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Loginscreen(),
        '/sign' : (context) => const Signupscreen(),
        '/main' : (context) => const Mainscreen(),
        '/mentor' : (context) => const Mentorsscreen(),
        '/settings' : (context) => const Settingsscreen(),
        '/profile' : (context) => const Profilescreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
    );
  }
}
