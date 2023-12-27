import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAZKwlM8JRIAG7Q-sdeuO4UCISX6-6c3v8",
            authDomain: "acpm-b6dec.firebaseapp.com",
            projectId: "acpm-b6dec",
            storageBucket: "acpm-b6dec.appspot.com",
            messagingSenderId: "583321860696",
            appId: "1:583321860696:web:fe3101c25796e92583e82d",
            measurementId: "G-S29T8Y3VQL"));
  } else {
    await Firebase.initializeApp();
  }
}
