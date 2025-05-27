import 'package:flutter/material.dart';
import 'package:simple_flutter_wallet_app/screens/user_balance_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oluwasegun\'s Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserBalanceScreen(userName: 'Oluwasegun', balance: 1250.75),
    );
  }
}
