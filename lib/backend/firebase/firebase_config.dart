import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCnRjoGjgbzuWxNNGWEwKSinPkrGKtqAWg",
            authDomain: "flutterflowproject-ae675.firebaseapp.com",
            projectId: "flutterflowproject-ae675",
            storageBucket: "flutterflowproject-ae675.appspot.com",
            messagingSenderId: "563703243567",
            appId: "1:563703243567:web:fbc98739a2aabca1aef7da",
            measurementId: "G-H5D2YF44JN"));
  } else {
    await Firebase.initializeApp();
  }
}
