import 'package:flutter/material.dart';

class WhatsAppChatScreen extends StatelessWidget {
  const WhatsAppChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: 30,
        leading: const Icon(
          Icons.arrow_back,
          size: 28,
        ),
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: ExactAssetImage('assets/images/person.jpg'),
            ),
            SizedBox(width: 20),
            Text(
              'Person',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
        actions: const [
          SizedBox(width: 70),
          Icon(
            Icons.videocam_sharp,
            size: 27,
          ),
          SizedBox(width: 19),
          Icon(
            Icons.call,
            size: 27,
          ),
          SizedBox(width: 18),
          Icon(
            Icons.more_vert,
            size: 27,
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        radius: 26,
                        backgroundImage:
                            ExactAssetImage('assets/images/person1.jpg'),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 270,
                        margin: const EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(32)),
                        ),
                        child: const Text(
                          'This is My First Message',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 270,
                        margin: const EdgeInsets.only(left: 25),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(32)),
                        ),
                        child: const Text(
                          'This is My Second Message',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 26,
                        backgroundImage:
                            ExactAssetImage('assets/images/person2.jpg'),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: 65,
                    width: 312,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.all(Radius.circular(32)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a Message',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          prefixIcon: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                          suffixIcon: Icon(
                            Icons.attach_file,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Icon(
                      Icons.keyboard_voice,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
