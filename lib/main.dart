import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:school_application/screens/main_page.dart';
import 'package:school_application/screens/signin.dart';
import 'package:school_application/screens/welcome.dart';
import 'package:school_application/theme/theme.dart';
import 'firebase_options.dart';
void main() async {

  WidgetsFlutterBinding.ensureInitialized();


  print("Initializing Firebase...");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runApp(MyApp());
  print("App started.");
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home:const MainPage(),
    );
  }
}

