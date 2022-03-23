
import 'package:flutter/material.dart';
import 'package:provider_testing/model/contact.dart';

class Contacts with ChangeNotifier {
  final List<Contact> _contactList = [
    Contact(name: 'Mike', phoneNumber: '573120345'),
    Contact(name: 'Joe', phoneNumber: '234453678'),
    Contact(name: 'Anna', phoneNumber: '567456987'),
    Contact(name: 'Greg', phoneNumber: '453276987'),
    Contact(name: 'Wilson', phoneNumber: '456098321'),
    Contact(name: 'Anabel', phoneNumber: '123567435'),
    Contact(name: 'Mike', phoneNumber: '573120345'),
    Contact(name: 'Joe', phoneNumber: '234453678'),
    Contact(name: 'Anna', phoneNumber: '567456987'),
    Contact(name: 'Greg', phoneNumber: '453276987'),
    Contact(name: 'Wilson', phoneNumber: '456098321'),
    Contact(name: 'Anabel', phoneNumber: '123567435'),
    Contact(name: 'Mike', phoneNumber: '573120345'),
    Contact(name: 'Joe', phoneNumber: '234453678'),
    Contact(name: 'Anna', phoneNumber: '567456987'),
    Contact(name: 'Greg', phoneNumber: '453276987'),
    Contact(name: 'Wilson', phoneNumber: '456098321'),
    Contact(name: 'Anabel', phoneNumber: '123567435'),
  ];

  List<Contact> get contacts => [..._contactList];

  void editItem(String phoneNumberAsIndex, String newName, String newPhoneNumber) {
    var faundContact = _contactList.firstWhere((element) => element.phoneNumber == phoneNumberAsIndex);
    if (newName != '') {
      faundContact.name = newName;
    }
    if (newPhoneNumber != '') {
      faundContact.phoneNumber = newPhoneNumber;
    }
    notifyListeners();
  }

}