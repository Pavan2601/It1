import 'package:barcode_scan_fix/barcode_scan.dart';

import 'package:first_flutter_app/constants.dart';
import 'package:first_flutter_app/models/salons.dart';
import 'package:first_flutter_app/widgets/category_card.dart';
import 'package:first_flutter_app/widgets/customListTile.dart';
import 'package:first_flutter_app/widgets/salon_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/categories.dart';
import 'Dashboard.dart';
import 'login.dart';
import 'Qr_Scanner.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String qrCodeResult = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      drawer: Drawer(
          child: Container(
              color: Colors.amber[50],
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                        ),
                        Container(
                          child: DrawerHeader(
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text('Header')),
                          ),
                          height: MediaQuery.of(context).size.height / 7,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.amber),
                        ),
                        ListTile(
                          title: Text(
                            'Dashboard',
                            style: TextStyle(fontSize: 25),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardPage()),
                            );
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ListTile(
                          title: Text(
                            'Settings',
                            style: TextStyle(fontSize: 25),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  width: double.infinity,
                  height: 350.0,
                  padding: EdgeInsets.only(bottom: 50.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/salon_img.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBar(
                        backgroundColor: Colors.black12.withOpacity(.0),
                        elevation: 0.0,

                        //leading: Icon(Icons.menu)
                        actions: [
                          //leading: Icon(Icons.menu)

                          // Text(
                          //   qrCodeResult,
                          //   style: TextStyle(
                          //     fontSize: 20.0,

                          //   ),
                          //   textAlign: TextAlign.center,
                          // ),
                          RaisedButton(
                              color: Colors.amber[50],
                              child: Text('Scan'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ScanQR()));
                              }),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Find and book the best services",
                          style: kTitleStyle.copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 18.0),
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white.withOpacity(.9),
                        ),
                        child: TextField(
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search your favourite salons",
                            hintStyle: kHintStyle,
                            icon: Icon(Icons.search),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              CustomListTile(title: "Top Categories"),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 100.0,
                child: ListView.builder(
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    var category = categoryList[index];

                    return CategoryCard(category: category);
                  },
                ),
              ),
              SizedBox(height: 30.0),
              CustomListTile(title: "Best salons around you"),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 200.0,
                child: ListView.builder(
                  itemCount: salonList.length,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    var salons = salonList[index];

                    return GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.amber[50],
                                  content: Stack(
                                    //overflow: Overflow.visible,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                5,
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                'Hello',
                                                textAlign: TextAlign.center,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        }, // handle your image tap here
                        child: SalonCard(
                          salons: salons,
                        )
                        // Image.asset(
                        //   'assets/cat.jpg',
                        //   fit: BoxFit.cover, // this is the solution for border
                        //   width: 110.0,
                        //   height: 110.0,
                        // ),
                        );

                    // return SalonCard(
                    //   salons: salons,
                    // );
                  },
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
