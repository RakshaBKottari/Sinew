import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA60M04AthCQRAKAWquVnZzTPekACBwC_E",
            authDomain: "manipal-internship-19thnov22.firebaseapp.com",
            projectId: "manipal-internship-19thnov22",
            storageBucket: "manipal-internship-19thnov22.appspot.com",
            messagingSenderId: "944942815591",
            appId: "1:944942815591:web:e998bba82bcc55213537c2"));
  } else {
    await Firebase.initializeApp();
  }
}
