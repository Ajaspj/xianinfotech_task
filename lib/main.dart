import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xianinfotech_task/controller/SaleScreenController.dart';
import 'package:xianinfotech_task/screens/HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDTzqRskACUZOJbcGGTtKqQZTbrAhKqXFs",
      appId: "1:753722317613:android:b0b6ff412784aa9d43d1a4",
      messagingSenderId: "",
      projectId: "xianinfotech-task",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SaleController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
