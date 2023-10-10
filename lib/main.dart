
import 'package:drone/constants.dart';
import 'package:drone/controller.dart';
import 'package:drone/screens/drone_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DroneApp());
}

class DroneApp extends StatelessWidget {
  const DroneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Muli',
          ),
          home: const DroneScreen(),
        );
      },
    );
  }
}

class DroneScreen extends StatelessWidget {
  const DroneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return const DroneNav();
  }
}