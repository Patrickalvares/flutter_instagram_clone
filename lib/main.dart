import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/screens/login_screen.dart';
import 'package:flutter_instagram_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBxv-Nwmmzdf2OaSc4I3MUjYCrW4WpMumA",
        appId: "1:320420702079:web:f8536e0850d09737f89c4a",
        messagingSenderId: "320420702079",
        projectId: "flutter-instagram-clone-5a186",
        storageBucket: "flutter-instagram-clone-5a186.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instagram Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: /*const ResponsiveLayout(
            webScreenLayout: webScreenLayout(),
            mobileScreenLayout: mobileScreenLayout())*/
            const LoginScreen());
  }
}
