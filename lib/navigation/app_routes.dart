import 'package:flutter/material.dart';

import 'main_scaffold.dart';
import '../screens/about_screen.dart';
import '../screens/temple_screen.dart';
import '../screens/donate_screen.dart';
import '../screens/gallery_screen.dart';

class AppRoutes {
  static const String root = '/';
  static const String about = '/about';
  static const String temple = '/temple';
  static const String donate = '/donate';
  static const String gallery = '/gallery';

  static final Map<String, WidgetBuilder> routes = {
    root: (_) => const MainScaffold(),
    about: (_) => const AboutScreen(),
    temple: (_) => const TempleScreen(),
    donate: (_) => const DonateScreen(),
    gallery: (_) => const GalleryScreen(),
  };
}