import 'package:flutter/material.dart';

class ProjectConstants {
  ProjectConstants._();

  // App-wide Strings
  static const String appName = "My Flutter App";
  static const String homeTitle = "Home";

  // API URLs
  static const String baseUrl = "https://api.example.com";
  static const String loginEndpoint = "/auth/login";
  static const String signUpEndpoint = "/auth/signup";

  // Common Padding and Margins

  // Colors
  static const Color primaryColor = Color(0xFF00615F); // temp test
  static const Color secondaryColor = Color(0xFF859494); // temp test
  // static const Color backgroundColor = Color(0xFFF5F5F5); // currently default
  static const Color textColor = Color(0xFF03DAC6); // TODO

  static const Color selectionColorNavigationBar = Color(0xFF00615F);
  static const Color unselectedColorNavigationBar = Color(0xFF859494);
  // static const Color backgroundColorNavigationBar = Color();  currently default color

  static const double defaultPadding = 20.0;
  static const double largePadding = 100.0;
  static const double defaultBorderRadius = 5.0;

  // Text Styles
  static const TextStyle headline1 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16.0,
    color: textColor,
  );

  // Duration for Animations
  static const Duration animationDuration = Duration(milliseconds: 300);
}