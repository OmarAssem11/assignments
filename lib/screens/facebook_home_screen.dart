import 'package:flutter/material.dart';

class FacebookHomeScreen extends StatelessWidget {
  const FacebookHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            padding: const EdgeInsets.all(8),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    child: Image.asset(
                      'assets/images/facebookStory.jpg',
                      scale: 2.5,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.account_circle,
                          color: Colors.blue,
                          size: 23,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(width: 12),
                          Text(
                            'Owner',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              itemCount: 6,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 8),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.account_circle,
                              size: 52,
                            ),
                            const SizedBox(width: 8),
                            Column(
                              children: [
                                const Text(
                                  'Owner',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Text('3h'),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.public,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'My post',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        const Text('100'),
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/images/like.jpg',
                          height: 25,
                          width: 50,
                        ),
                        const Expanded(child: SizedBox()),
                        const Text('100 Comments'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        horizontal:
                            BorderSide(width: .6, color: Colors.black87),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(const Size(110, 30)),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/singleLike.jpg',
                                height: 25,
                                width: 50,
                              ),
                              const Text(
                                'Like',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(const Size(148, 30)),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/comment.jpg',
                                height: 25,
                                width: 50,
                              ),
                              const Text(
                                'Comment',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(const Size(121, 30)),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/share.png',
                                height: 25,
                                width: 50,
                              ),
                              const Text(
                                'Share',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
