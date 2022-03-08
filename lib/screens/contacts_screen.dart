import 'package:assignments/components/contact_item.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);
  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

int index = 0;

class _ContactsScreenState extends State<ContactsScreen> {
  final decoration = BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(32)),
    border: Border.all(),
  );
  final nameControllers = List.generate(3, (_) => TextEditingController());
  final phoneControllers = List.generate(3, (_) => TextEditingController());
  ContactItem contactItem1 = ContactItem(
    isVisible: false,
    nameController: TextEditingController(),
    phoneController: TextEditingController(),
  );
  ContactItem contactItem2 = ContactItem(
    isVisible: false,
    nameController: TextEditingController(),
    phoneController: TextEditingController(),
  );
  ContactItem contactItem3 = ContactItem(
    isVisible: false,
    nameController: TextEditingController(),
    phoneController: TextEditingController(),
  );

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Contacts Screen'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 11,
              ),
              decoration: decoration,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Your Name Here',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                ),
                keyboardType: TextInputType.name,
                controller: index < 3
                    ? nameControllers[index]
                    : TextEditingController(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name can't be empty";
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 8,
                left: 8,
                bottom: 16,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 11,
              ),
              decoration: decoration,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Your Phone Number',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ),
                keyboardType: TextInputType.phone,
                controller: index < 3
                    ? phoneControllers[index]
                    : TextEditingController(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Phone number can't be empty";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
                top: 8,
                bottom: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                          const Size(double.infinity, 50),
                        ),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(64)),
                          ),
                        ),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      onPressed: addContact,
                      child: const Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            contactItem1,
            contactItem2,
            contactItem3,
          ],
        ),
      ),
    );
  }

  void addContact() {
    if (_formKey.currentState!.validate()) {
      switch (index) {
        case 0:
          contactItem1 = ContactItem(
            isVisible: true,
            nameController: nameControllers[0],
            phoneController: phoneControllers[0],
          );
          index++;
          break;
        case 1:
          contactItem2 = ContactItem(
            isVisible: true,
            nameController: nameControllers[1],
            phoneController: phoneControllers[1],
          );
          index++;
          break;
        case 2:
          contactItem3 = ContactItem(
            isVisible: true,
            nameController: nameControllers[2],
            phoneController: phoneControllers[2],
          );
          index++;
          break;
      }
      if (index < 3) {
        nameControllers[index].clear();
        phoneControllers[index].clear();
      }
      setState(() {});
    }
  }
}
