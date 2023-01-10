import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/foto1.jpeg"),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text("_arya01"),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
          ),
          Image.asset(
            image,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment_bank_outlined,
                                size: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.send,
                                size: 24,
                              ),
                            ),
                            // const CircleAvatar(
                            //   backgroundColor: Colors.grey,
                            //   radius: 4,
                            // )
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_outline_sharp,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // ignore: prefer_const_constructors
                  const Padding(
                    padding: EdgeInsets.all(2),
                    child: Text(
                      "57.876 suka",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            "_arya01",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            "Mantap kan guys...",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage("images/ambiyah5.jpg"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                                hintText: "Komentar...",
                                hintStyle: TextStyle(fontSize: 15)),
                          ),
                        ),
                        // Text("Add Comments..."),
                        Spacer(),
                        Text(
                          "😍",
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "😂",
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          child: Icon(
                            Icons.add_box_outlined,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "1 jam yang lalu",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 2,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
