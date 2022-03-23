import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_testing/model/contact.dart';
import 'package:provider_testing/reusable_widgets/reusableListView.dart';
import 'package:provider_testing/screens/screen1.dart';
import 'package:provider_testing/screens/screen2.dart';

import '../model/contacts_provider.dart';

class MyHomePage extends StatelessWidget {
   static const routeName = '/my-home-page';
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Contacts dataProvider = Provider.of<Contacts>(context);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.8,
            child: ReusableListViewBuilder(
              itemCount: dataProvider.contacts.length,
              data: dataProvider.contacts,
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Screen1.routeName);
                },
                child: const Text('Screen 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Screen2.routeName);
                },
                child: const Text('Screen 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
