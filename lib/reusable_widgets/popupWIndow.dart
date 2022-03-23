import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/contacts_provider.dart';

// class PopupWindow extends StatefulWidget {
//   final int index;

//   PopupWindow({Key? key, required this.index}) : super(key: key);

//   @override
//   State<PopupWindow> createState() => _PopupWindowState();
// }

class PopupWindow extends StatelessWidget {
  final int index;

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController numberTextEditingController = TextEditingController();

   String userTypedName = '';
   String userTypedNumber = '';

   PopupWindow({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var dataProvider = Provider.of<Contacts>(context);
    var screenSize = MediaQuery.of(context).size;

    // Find the selected ListTile name value
    String selectedName = dataProvider.contacts[index].name;
    String selectedNumber = dataProvider.contacts[index].phoneNumber;
 
    // Assign the found value as an initial
    nameTextEditingController.text = selectedName;
    numberTextEditingController.text = selectedNumber;

    return Container(
      height: screenSize.height * 0.6,
      color: Colors.black38,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: screenSize.width,
            child: const Padding(
              padding: EdgeInsets.only(left: 40, top: 40),
              child: Text(
                'Edit Contact',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 40, top: 40, bottom: 0),
            child: TextField(
              controller: nameTextEditingController,
              onChanged: (newValue) {
                
                  userTypedName = newValue;
                
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: TextField(
              controller: numberTextEditingController,
              onChanged: (newValue) {
                  userTypedNumber = newValue;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              dataProvider.editItem(
                  selectedNumber, userTypedName, userTypedNumber);
              Navigator.pop(context);
            },
            child: const Text('Save Changes'),
          ),
        ],
      ),
    );
  }
}
