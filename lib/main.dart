import 'package:flutter/material.dart';
import 'package:like_hod/screens/home.dart';
import 'package:like_hod/screens/order_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.blue),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        'OrderDetails': (context) => OrderDetails(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/home': (context) => HomeScreen(),
        // '/cahires': (context) => CashierScreen(),
      },
    );
  }
}
