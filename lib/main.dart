import 'package:flutter/material.dart';
import 'package:health_care/screens/home_screen.dart';
import 'package:health_care/screens/select_screen.dart';
import 'package:health_care/screens/staff_screen.dart';

import 'constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aviz Home Healthcare Private Limited',
      theme: ThemeData(
        primarySwatch: buildMaterialColor(kPrimaryColor),
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: kTextColor, fontFamily: 'VarelaRound'),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Select(),
        '/home': (context) => const Home(),
        '/staff': (context) => const Staff(),
      },
    );
  }

  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
