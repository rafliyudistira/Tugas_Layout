import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopee/pages/rekomendasi.dart';

class NavigasiBar extends StatefulWidget {
  const NavigasiBar({super.key});

  @override
  State<NavigasiBar> createState() => _NavigasiBarState();
}

int _selectedIndex = 0;
final pagesOption = [];
const List<Widget> _pages = <Widget>[
  Rekomendasi(),
  Icon(
    Icons.camera,
    size: 150,
  ),
  Icon(
    Icons.chat,
    size: 150,
  ),
  Icon(
    Icons.chat,
    size: 150,
  ),
  Icon(
    Icons.chat,
    size: 150,
  ),
  Icon(
    Icons.chat,
    size: 150,
  ),
];

class _NavigasiBarState extends State<NavigasiBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex, //New
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Saya',
          ),
        ],
      ),
    );
  }
}
