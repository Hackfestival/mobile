import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/constants/project_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(bottom: ProjectConstants.largePadding),
              child:  SvgPicture.asset(
                'assets/login.svg',
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: ProjectConstants.defaultPadding,
                  right: ProjectConstants.defaultPadding,
                  bottom: ProjectConstants.defaultPadding
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ProjectConstants.primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ProjectConstants.secondaryColor),
                  ),
                prefixIcon: Icon(Icons.person),
                  hintText: 'E-mail',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: ProjectConstants.defaultPadding,
                  right: ProjectConstants.defaultPadding,
                  left: ProjectConstants.defaultPadding
              ),
              child: TextFormField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: ProjectConstants.primaryColor),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: ProjectConstants.secondaryColor),
                  ),
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                        },
                      icon: _isPasswordVisible ? const Icon(Icons.visibility) :
                      const Icon(Icons.visibility_off)),
                  hintText: 'Password',
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(
                left: ProjectConstants.defaultPadding,
                right: ProjectConstants.defaultPadding
              ),
              child:  SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()  {},
                  style: ElevatedButton.styleFrom(
                   backgroundColor: ProjectConstants.primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(ProjectConstants.defaultBorderRadius)),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),)
                ),
            ),)
          ],
        )
      ),
    );
  }
}