import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    required this.isVisible,
    required this.nameController,
    required this.phoneController,
  });
  final bool isVisible;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${nameController.text}',
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
            Text(
              'Phone: ${phoneController.text}',
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
