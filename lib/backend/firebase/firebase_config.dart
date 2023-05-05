import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCACJ-EmubLcfHHHOCtMo_xg-QjVjjKqXw",
            authDomain: "wherewa-ac094.firebaseapp.com",
            projectId: "wherewa-ac094",
            storageBucket: "wherewa-ac094.appspot.com",
            messagingSenderId: "196600057532",
            appId: "1:196600057532:web:4c44422beefde8fd87cab9",
            measurementId: "G-TNQN3HGDMJ"));
  } else {
    await Firebase.initializeApp();
  }
}
