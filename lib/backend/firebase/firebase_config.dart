import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAQw3W20WuHxLiFXiaMT5Y7YuM318a2Xjc",
            authDomain: "anugrahcahayaputramandiriapps.firebaseapp.com",
            projectId: "anugrahcahayaputramandiriapps",
            storageBucket: "anugrahcahayaputramandiriapps.appspot.com",
            messagingSenderId: "675503401155",
            appId: "1:675503401155:web:78f18fd42dc024a2581a76",
            measurementId: "G-R74LKVZ7WQ"));
  } else {
    await Firebase.initializeApp();
  }
}
