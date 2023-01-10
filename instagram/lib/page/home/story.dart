import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  Story({
    super.key,
  });

  @override
  State<Story> createState() => _StoryState();
}

bool colorMode = false;

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            StoryItem(
              image: 'images/ambiyah.jpg',
              title: 'Your Story',
            ),
            StoryItem(
              image: 'images/ambiyah1.jpg',
              title: 'nang_adi',
            ),
            StoryItem(
              image: 'images/foto1.jpeg',
              title: '_arya01',
            ),
            StoryItem(
              image: 'images/foto3.jpeg',
              title: 'ayom_izu',
            ),
            StoryItem(
              image: 'images/foto2.jpeg',
              title: 'ardi_djan',
            ),
            StoryItem(
              image: 'images/ambiyah3.jpg',
              title: 'amin11_za',
            ),
          ],
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title, image;
  final colorMode = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 187, 0),
                  Color.fromARGB(250, 255, 0, 0),
                  Color.fromARGB(248, 255, 0, 242),
                ],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: colorMode ? Colors.white : Colors.black),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(image)),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
