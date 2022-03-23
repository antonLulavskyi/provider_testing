import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_testing/reusable_widgets/reusableListView.dart';

import '../model/contacts_provider.dart';

class Screen1 extends StatelessWidget {
  static const routeName = '/screen1';
  const Screen1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataProvider = Provider.of<Contacts>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: ReusableListViewBuilder(
          itemCount: dataProvider.contacts.length,
          data: dataProvider.contacts,
        ),
      ),
    );
  }
}