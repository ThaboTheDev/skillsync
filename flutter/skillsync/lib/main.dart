import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/signupscreen.dart';
import 'screens/loginscreen.dart';
import 'screens/mainscreen.dart';

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
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/login':
            return MaterialPageRoute(builder: (context) => Loginscreen());

          case '/sign':
            return MaterialPageRoute(builder: (context) => Signupscreen());

          case '/main':
            return MaterialPageRoute(builder: (context) => Mainscreen());

          default:
            return MaterialPageRoute(builder: (context) => Mainscreen());
        }
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey.shade100),
      ),
    );
  }
}
