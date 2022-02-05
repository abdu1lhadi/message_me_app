import 'package:flutter/material.dart';
import './reginstration_screen.dart';
import './signin_screen.dart';
import '../widgets/my_button.dart';

class WelcomsScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';

  const WelcomsScreen({Key? key}) : super(key: key);

  @override
  State<WelcomsScreen> createState() => _WelcomsScreenState();
}

class _WelcomsScreenState extends State<WelcomsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                Text(
                  'MessageMe',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign in',
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.screenRoute);
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.screenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
