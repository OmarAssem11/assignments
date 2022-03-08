import 'package:assignments/screens/contacts_screen.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatefulWidget {
  ContactItem({
    required this.isVisible,
    required this.nameController,
    required this.phoneController,
  });
  bool isVisible;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  @override
  State<ContactItem> createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isVisible,
      child: Container(
        height: 100,
        width: double.infinity,
        margin: const EdgeInsets.only(
          right: 8,
          left: 8,
          top: 4,
          bottom: 16,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${widget.nameController.text}',
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  'Phone: ${widget.phoneController.text}',
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            ElevatedButton(
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
              onPressed: () {
                setState(() {
                  widget.isVisible = false;
                  index--;
                });
              },
              child: const Text(
                'Delete',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
