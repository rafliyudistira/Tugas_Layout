import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Rekomendasi extends StatefulWidget {
  const Rekomendasi({super.key});

  @override
  State<Rekomendasi> createState() => _RekomendasiState();
}

class _RekomendasiState extends State<Rekomendasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // The search area here
        title: Row(
          children: [
            Container(
              width: 388,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.camera_alt_outlined),
                        onPressed: () {
                          /* Clear the search field */
                        },
                      ),
                      hintText: 'Promo 50% 12.12 Shopee',
                      border: InputBorder.none),
                ),
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.comment_bank_outlined)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  child: Carousel(
                    images: const [
                      AssetImage("images/shoppe.jpg"),
                      AssetImage("images/shopee1.jpg"),
                      AssetImage("images/shopee2.jpg"),
                    ],
                    dotBgColor: Colors.transparent,
                    dotSize: 4,
                    dotIncreasedColor: Colors.white,
                    animationDuration: Duration(seconds: 1),
                    animationCurve: Curves.fastOutSlowIn,
                    // borderRadius: true,
                    // radius: Radius.circular(10),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 187),
                    width: 470,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.qr_code,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: Icon(Icons.qr_code),
                        //   color: Colors.grey,
                        // ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              VerticalDivider(
                                color: Colors.grey[350],
                                width: 20,
                                thickness: 0.5,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.wallet,
                                        color: Colors.deepOrange,
                                        size: 20,
                                      ),
                                      Text("Rp.100.000")
                                    ],
                                  ),
                                  const Text(
                                    "Isi Sldo",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              VerticalDivider(
                                color: Colors.grey[350],
                                width: 20,
                                thickness: 0.5,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.monetization_on_outlined,
                                        color: Color.fromARGB(255, 255, 183, 0),
                                        size: 20,
                                      ),
                                      Text("10.000")
                                    ],
                                  ),
                                  const Text(
                                    "Koin Saya",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              VerticalDivider(
                                color: Colors.grey[350],
                                width: 20,
                                thickness: 0.5,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.logout_outlined,
                                        color: Colors.deepOrange,
                                        size: 20,
                                      ),
                                      Text("Transfer")
                                    ],
                                  ),
                                  const Text(
                                    "Gratis",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              color: Colors.deepOrange,
              height: 200,
              child: GridView(
                // physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                children: const <Widget>[
                  Icon(Icons.wallet),
                  Icon(Icons.wallet),
                  Icon(Icons.wallet),
                  Icon(Icons.wallet),
                  Icon(Icons.wallet),
                  Icon(Icons.wallet),
                  Icon(Icons.wallet),
                  Icon(Icons.wallet),
                  Icon(Icons.wallet),
                  Icon(Icons.wallet),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
