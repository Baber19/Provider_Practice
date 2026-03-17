import 'package:flutter/material.dart';

class ContactListProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _mContacts = [];

  List<Map<String, dynamic>> getList() => _mContacts;
  addContact({required String name, required String mobNo}) {
    _mContacts.add({"name": name, "mobNo": mobNo});
    notifyListeners();
  }

  updateContact({
    required int index,
    required String updatedName,
    required String updMobNo,
  }) {
    _mContacts[index] = {"name": updatedName, "mobNo": updMobNo};
    notifyListeners();
  }

  deleteContact({required int index}) {
    _mContacts.removeAt(index);
    notifyListeners();
  }
}
