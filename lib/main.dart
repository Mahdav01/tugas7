import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        endDrawer: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 340,
            width: double.infinity,
            child: Drawer(
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'images/inaklug.png',
                              fit: BoxFit.contain,
                              height: 55,
                            ),
                            IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () {
                                _scaffoldKey.currentState?.closeEndDrawer();

                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'HOME                 ',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'TENTANG KAMI',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'LAYANAN KAMI',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {

                      },
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'ARTIKEL             ',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {

                      },
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'HUBUNGI KAMI',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {

                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 80.0,
              floating: false,
              pinned: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "images/inaklug.png",
                        fit: BoxFit.contain,
                        height: 70,
                      ),
                      const SizedBox(width: 29),
                      const Text(
                        "Inaklug",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Times New Roman',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              backgroundColor: Colors.transparent,
            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Image.asset("images/berlin.jpg"),
                    Positioned(
                      bottom: 30.0,
                      left: 16.0,
                      child: Text(
                        "Layanan Kami",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Times New Roman',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),


            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/bachelor.png"),
                      ),
                    ),
                    Positioned(
                      width: 350,
                      top: 15,
                      bottom: 15,
                      left: 13.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF940B92),
                                Colors.transparent
                              ],

                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 17,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Studi S1 Bachelor",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),


            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/master.png"),
                      ),
                    ),
                    Positioned(
                      width: 350,
                      top: 15,
                      bottom: 15,
                      left: 13.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF940B92),
                                Colors.transparent
                              ],

                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 17,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Studi S2 master",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/perawat.jpg"),
                      ),
                    ),
                    Positioned(
                      width: 350,
                      top: 15,
                      bottom: 15,
                      left: 13.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF940B92),
                                Colors.transparent
                              ],

                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 17,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Perawat/Caregiver",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/kursus.png"),
                      ),
                    ),
                    Positioned(
                      width: 350,
                      top: 15,
                      bottom: 15,
                      left: 13.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF940B92),
                                Colors.transparent
                              ],

                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 17,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Kursus Bahasa Asing",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),



            // SLIVER LIST TULISAN HUBUNGI KAMI
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'HUBUNGI KAMI',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'KANTOR PUSAT',
                          style: TextStyle(fontSize: 18.0,fontFamily: 'Times New Roman'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'MULA BY GALERIA JAKARTA, CILANDAK TOWN SQUARE, LT. BASEMENT.',
                          style: TextStyle(fontSize: 16.0,fontFamily: 'Times New Roman'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'PHONE : 085286754052',
                          style: TextStyle(fontSize: 16.0,fontFamily: 'Times New Roman'),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child:Center(
                          child: Container(
                            height: 40.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              gradient: LinearGradient(
                                colors: [Colors.purple, Colors.blue],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'LOKASI KAMI',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Times New Roman',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child:Center(
                          child: Container(
                            height: 40.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                color: Colors.black, // Outline color
                                width: 1.0, // Outline width
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'KIRIM PESAN',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Times New Roman',
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ]),
            ),


            // COPYRIGHT
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.blue, Colors.purple],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Copyright 2022 - Inaklug Hak Cipta",
                            style: TextStyle(color: Colors.white,fontSize: 18.0,fontFamily: 'Times New Roman',),
                          ),
                          Text(
                            "Dilindungi Undang Undang",
                            style: TextStyle(color: Colors.white, fontSize: 18.0,fontFamily: 'Times New Roman',),
                          ),
                        ],
                      ),
                    ),
                  ),

                ),
              ]),
            ),
          ],
        ),

      ),
    );
  }
}