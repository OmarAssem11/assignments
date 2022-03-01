import 'package:assignments/components/contact_item.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);
  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final decoration = BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(32)),
    border: Border.all(),
  );
  final nameControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  final phoneControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  List<bool> isVisible = [
    false,
    false,
    false,
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Contacts Screen'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Column(
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
            child: TextField(
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
              controller: index < nameControllers.length
                  ? nameControllers[index]
                  : null,
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
            child: TextField(
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
              controller: index < phoneControllers.length
                  ? phoneControllers[index]
                  : null,
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
                    onPressed: () => setState(() {
                      isVisible[index] = true;
                      index++;
                    }),
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
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        const Size(double.infinity, 50),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(64)),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    onPressed: () => setState(() {
                      if (index >= 0) {
                        if (index > 0) {
                          index--;
                        }
                        isVisible[index] = false;
                        nameControllers[index].clear();
                        phoneControllers[index].clear();
                      }
                    }),
                    child: const Text(
                      'Delete',
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
          ContactItem(
            isVisible: isVisible[0],
            nameController: nameControllers[0],
            phoneController: phoneControllers[0],
          ),
          ContactItem(
            isVisible: isVisible[1],
            nameController: nameControllers[1],
            phoneController: phoneControllers[1],
          ),
          ContactItem(
            isVisible: isVisible[2],
            nameController: nameControllers[2],
            phoneController: phoneControllers[2],
          ),
        ],
      ),
    );
  }
}
