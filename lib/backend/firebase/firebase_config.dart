import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyARCVsAxo-2qUFGzLjbK6VAoxVdaRboOvw",
            authDomain: "teagannorconk-todoapp.firebaseapp.com",
            projectId: "teagannorconk-todoapp",
            storageBucket: "teagannorconk-todoapp.firebasestorage.app",
            messagingSenderId: "207730558847",
            appId: "1:207730558847:web:1cc3e39ba7656956fc3c4a",
            measurementId: "G-BCM9MMEHLV"));
  } else {
    await Firebase.initializeApp();
  }
}
