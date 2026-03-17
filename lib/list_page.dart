import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/add_contact.dart';
import 'package:provider_practice/contact_list_provider.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController mobNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("List page"))),
      body: Consumer<ContactListProvider>(
        builder: (ctx, provider, child) {
          List<Map<String, dynamic>> mContacts = provider.getList();
          return mContacts.isNotEmpty
              ? ListView.builder(
                  itemCount: mContacts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(mContacts[index]["name"]),
                        subtitle: Text(mContacts[index]["mobNo"]),
                        trailing: Row(
                        //  mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                context
                                    .read<ContactListProvider>()
                                    .updateContact(
                                      index: index,
                                      updatedName: nameController.text,
                                      updMobNo: mobNoController.text,
                                    );
                              },
                              icon: Icon(Icons.edit),

                            ),
                            IconButton(
                              onPressed: () {
                                context
                                    .read<ContactListProvider>()
                                    .deleteContact(index: index);
                              },
                              icon: Icon(Icons.delete, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : Center(child: Text("No Contacts Found"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddContact()),
          );
        },
        child: Text("+"),
      ),
    );
  }
}
