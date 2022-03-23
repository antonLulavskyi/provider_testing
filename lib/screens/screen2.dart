import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_testing/model/contacts_provider.dart';
import 'package:provider_testing/reusable_widgets/reusableListView.dart';

class Screen2 extends StatelessWidget {
  static const routeName = '/screen2';
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<Contacts>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Center(
          child: ReusableListViewBuilder(
        itemCount: dataProvider.contacts.length,
        data: dataProvider.contacts,
      )),
    );
  }
}
