import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.screen.dart'; // Certifique-se de que o caminho está correto

// Insira suas FirebaseOptions aqui
const FirebaseOptions firebaseOptions = FirebaseOptions(
   apiKey: "AIzaSyDXAEToOcw1lIS77IxIs9eyc_8VJ1yh-fg",
  authDomain: "fire-flutter-1101.firebaseapp.com",
  projectId: "fire-flutter-1101",
  storageBucket: "fire-flutter-1101.appspot.com",
  messagingSenderId: "108435347105",
  appId: "1:108435347105:web:ba868f43a505666604c2e0",
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions);
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Navega para a tela de login
    );
  }
}
