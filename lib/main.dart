import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:latest_meal_app_riverpod/firebase_options.dart';
import 'package:latest_meal_app_riverpod/screen/login_screen.dart';
import 'package:latest_meal_app_riverpod/screen/splash_screen.dart';
import 'package:latest_meal_app_riverpod/screen/tabs_screen.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    primary: const Color.fromARGB(210, 227, 169, 69),
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 4, 4, 4),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }

          if (snapShot.hasData) {
            return const TabScreen();
          }

          return const LoginScreen();
        },
      ),
    );
  }
}
