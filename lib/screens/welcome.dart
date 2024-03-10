import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_application/screens/signin.dart';
import 'package:school_application/screens/signup.dart';
import 'package:school_application/theme/theme.dart';
import 'package:school_application/widgets/custome_scaffold.dart';
import 'package:school_application/widgets/welcome_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(
                      text: 'Welcome to School Application\n',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      )),
                  TextSpan(
                      text: '\nLogin/SignUp\n',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ))
                ]),
              ),
            ),
          )),
           Flexible(
            flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                            children: [
                const Expanded(child: WelcomeButton(
                  buttonText: 'Sign In',
                  color: Colors.transparent,
                  onTap: Signin(),
                  textColor: Colors.white,
                )),
                Expanded(child: WelcomeButton(
                  buttonText: 'Sign Up',
                  color: Colors.white,
                  onTap: Signup(),
                  textColor: lightColorScheme.primary,
                ))
                            ],
                          ),
              ))
        ],
      ),
    );
  }
}
