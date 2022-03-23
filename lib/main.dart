import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_testing/model/contacts_provider.dart';
import 'package:provider_testing/screens/my_home_page.dart';
import 'package:provider_testing/screens/screen1.dart';
import 'package:provider_testing/screens/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Contacts(),
      child: MaterialApp(
        
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.deepOrange
          ),
        debugShowCheckedModeBanner: false,
        //home: const MyHomePage(),
        initialRoute: MyHomePage.routeName,
        routes: {
          MyHomePage.routeName:(context) => const MyHomePage(),
          Screen1.routeName:(context) => const Screen1(),
          Screen2.routeName:(context) => const Screen2(),
        },
      ),
    );
  }
}

