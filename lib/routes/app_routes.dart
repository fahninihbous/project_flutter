import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/about_page.dart';
import '../grid/grid_builder.dart';
import '../Latihan/TwitterProfile.dart';
import '../Latihan/LatInstagram.dart';

class AppRoutes {
  static const home = '/';
  static const about = '/about';
  static const grid = '/grid';
  static const twitterProfile = '/twitter-profile';
  static const instagram = '/instagram';


  static Map<String, WidgetBuilder> routes = {
      home: (context) => const HomePage(),
      about: (context) => const AboutPage(),
      grid: (context) => const GridProductPage(),
      twitterProfile: (context) => const TwitterProfileScreen(),
      instagram: (context) => const Instagram(),
  };
}