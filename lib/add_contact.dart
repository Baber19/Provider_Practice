import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/contact_list_provider.dart';

class AddContact extends StatelessWidget {
  AddContact({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController mobNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Name",
                labelText: "Enter name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: mobNoController,
              decoration: InputDecoration(
                hintText: "Mobile no",
                labelText: "Enter Mobile Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {
                    context.read<ContactListProvider>().addContact(
                      name: nameController.text,
                      mobNo: mobNoController.text,
                    );
                    Navigator.pop(context);
                  },
                  child: Text("Add"),
                ),
                SizedBox(width: 5),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("cancel"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
