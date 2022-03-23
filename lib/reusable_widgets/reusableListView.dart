import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_testing/model/contact.dart';
import 'package:provider_testing/model/contacts_provider.dart';
import 'package:provider_testing/reusable_widgets/popupWIndow.dart';

class ReusableListViewBuilder extends StatelessWidget {
  final int itemCount;
  final List<Contact> data;
  
   const ReusableListViewBuilder({Key? key, required this.itemCount, required this.data,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // var dataProvider = Provider.of<Contacts>(context);
   
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              //dataProvider.editItem(data[index].phoneNumber, 000);
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return PopupWindow(index: index);
                });
            },
            title: Text(data[index].name),
            subtitle: Text(data[index].phoneNumber),
            trailing: const Text('Click if you want to change me', style: TextStyle(color: Colors.grey,),
          ),);
        },);
  }
}


