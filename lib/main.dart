import 'package:flutter/material.dart';
import './screens/signin_screen.dart';
import './screens/welcome_screen.dart';
import './screens/chat_screen.dart';
import './screens/reginstration_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MessageMe app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: ChatScreen(),
      initialRoute: _auth.currentUser != null
          ? ChatScreen.screenRoute
          : WelcomsScreen.screenRoute,
      routes: {
        WelcomsScreen.screenRoute: (context) => WelcomsScreen(),
        SignInScreen.screenRoute: (context) => SignInScreen(),
        RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
        ChatScreen.screenRoute: (context) => ChatScreen(),
      },
    );
  }
}
