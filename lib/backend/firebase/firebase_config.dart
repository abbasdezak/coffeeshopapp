import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBk85FyghRCxXsnP2ZLbWElwJKm_ZNHU84",
            authDomain: "coffeeappshop.firebaseapp.com",
            projectId: "coffeeappshop",
            storageBucket: "coffeeappshop.appspot.com",
            messagingSenderId: "883672990616",
            appId: "1:883672990616:web:e2d429ca3e6f3d094121ed",
            measurementId: "G-B6L42YVTB8"));
  } else {
    await Firebase.initializeApp();
  }
}
