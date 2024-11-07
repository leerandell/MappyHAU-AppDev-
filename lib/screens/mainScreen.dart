import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MappyHAU",
      home: MyHomePage(title: "MappyHAU"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;
  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffcfcbcb),
        appBar: AppBar(
          title: Text(title, style: TextStyle(fontFamily: "Tan", fontSize: 30)),
          backgroundColor: Color(0xff701010),
          actions: [
            Image(image: AssetImage('images/front/HAU_logo.png')),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppInfo(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.info_sharp),
                  color: Colors.black),
            ],
          ),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Scrollbar(
              isAlwaysShown: _isAlwaysShown,
              showTrackOnHover: _showTrackOnHover,
              controller: controller,
              child: ListView(
                controller: controller,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Scaffold(
                            appBar: AppBar(
                                title: Text("The HAU Map",
                                    style: TextStyle(
                                        fontFamily: "Tan", fontSize: 30)),
                                backgroundColor: Color(0xff701010)),
                            body: InteractiveViewer(
                              child: Image(
                                height: 700,
                                image: AssetImage('images/front/HAU_map.PNG'),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: 280,
                      child: Image(
                        image: AssetImage('images/front/HAU_map.PNG'),
                      ),
                    ),
                  ),
                  SizedBox(height: 17.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PalazDeCor(),
                        ),
                      ); // Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(1)    Plaza De Corazon Building (Red Building)',
                      style: TextStyle(
                        fontFamily: "Anteb",
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StMarHall(),
                        ),
                      ); // Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(2)    St. Martha Hall Building',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SFDJ(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(3)    San Francisco De Javier Building (SFJ)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => STL(),
                        ),
                      ); // Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(4)    St. Therese of Liseux Building (STL)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WNC(),
                        ),
                      ); // Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(5)    Warehouse & Carpentry',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => YC(),
                        ),
                      ); // Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(6)    Yellow Canteen',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SGH(),
                        ),
                      ); // Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(7)    St. Gabriel Hall Building (SGH)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SRH(),
                        ),
                      ); // Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(8)    St. Raphael Hall Building (SRH)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StMikeHall(),
                        ),
                      ); // Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(9)    St. Michael Hall Building (SMH)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GGN(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(10)   Geromin G. Nepomuceno Building (GGN)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PGN(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(11)   Peter G. Nepomuceno Building (PGN)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DJDN(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(12)   Don Juan D. Nepomuceno Building (DJDN / Main Building)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => APS(),
                        ),
                      ); // Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(13)   Archbishop Pedro Santos Building (APS)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MGN(),
                        ),
                      );

                      /// Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(14)   Mamerto G. Nepomuceno Building (MGN)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Chap(),
                        ),
                      );

                      /// Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(15)   Chapel of the Holy Guardian Angel',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SJNFC(),
                        ),
                      );

                      /// Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(16)   Sister Josefina Nepomuceno Formation Center',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SJH(),
                        ),
                      );

                      /// Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(17)   St. Joseph Hall Building (SJH)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SH(),
                        ),
                      );

                      /// Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(18)   Sacred Heart Building (SH)',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CovCour(),
                        ),
                      );

                      /// Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(19)   Covered Court',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IHG(),
                        ),
                      );

                      /// Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(20)   Immaculate Heart Gymnasium',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IHGA(),
                        ),
                      );

                      /// Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xff701010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(21)    Immaculate Heart Gymnasium Annex',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Park(),
                        ),
                      );

                      /// Your button action here
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      '(P)    Parking Spot',
                      style: TextStyle(
                          fontFamily: "Anteb",
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
        drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff701010),
            ),
            child: Text(
              'SCHOOL DEPARTMENT',
              style: TextStyle(
                  fontFamily: "Alice", color: Colors.white, fontSize: 20.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffc8c7c7),
            ),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('images/front/soc.png'),
                ),
                title: const Text(
                  'School of Computing',
                  style: TextStyle(fontFamily: "Montserrat", fontSize: 19),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SOC(),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('images/front/sba.png'),
              ),
              title: const Text(
                'School of Business and Accountancy',
                style: TextStyle(fontFamily: "Montserrat", fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SBA(),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffc8c7c7),
            ),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('images/front/sea.png'),
                ),
                title: const Text(
                  'School of Engineering and Architecture',
                  style: TextStyle(fontFamily: "Montserrat", fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SEA(),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('images/front/sed.png'),
              ),
              title: const Text(
                'School of Education',
                style: TextStyle(fontFamily: "Montserrat", fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SED(),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffc8c7c7),
            ),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('images/front/shtm.png'),
                ),
                title: const Text(
                  'School of Hospitality and Tourism Management',
                  style: TextStyle(fontFamily: "Montserrat", fontSize: 16.5),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SHTM(),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 70,
            width: double.infinity,
            child: ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('images/front/ccjef.png'),
              ),
              title: const Text(
                'College of Criminal Justice Education and Forensics',
                style: TextStyle(fontFamily: "Montserrat", fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CCJEF(),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffc8c7c7),
            ),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('images/front/sas.png'),
                ),
                title: const Text(
                  'School of Arts and Sciences',
                  style: TextStyle(fontFamily: "Montserrat", fontSize: 17),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SAS(),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('images/front/bed.png'),
              ),
              title: const Text(
                'Basic Education',
                style: TextStyle(fontFamily: "Montserrat", fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BED(),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffc8c7c7),
            ),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('images/front/gs.png'),
                ),
                title: const Text(
                  'Graduate School',
                  style: TextStyle(fontFamily: "Montserrat", fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GS(),
                    ),
                  );
                },
              ),
            ),
          ),
        ])));
  }
}

class PalazDeCor extends StatefulWidget {
  const PalazDeCor({Key? key}) : super(key: key);

  @override
  _PalazaDeState createState() => _PalazaDeState();
}

class _PalazaDeState extends State<PalazDeCor> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Plaza De Corazon Building \n(Red Building)',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/one/Plaza_Building.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HRDO(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/one/RedBuilding_HumanOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Human Resource Development\nOffice",
                                        style: TextStyle(
                                            fontSize: 16.5,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RBRedDorm(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/one/RedBuilding_Dormitory.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Dormitory",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class StMarHall extends StatefulWidget {
  const StMarHall({Key? key}) : super(key: key);

  @override
  _StMarState createState() => _StMarState();
}

class _StMarState extends State<StMarHall> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'St. Martha Hall Building',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(controller: controller, children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xff701010),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  'images/two/StMarthaBuilding.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SMHadmiss(),
                            ),
                          );
                        },
                        child: Container(
                          height: 250.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/two/StMartha_AdmissionsOff.jpg',
                                    width: 320,
                                    height: 180,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 8.0),
                                    Text(
                                      "Admissions Office",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: "MontserratSemi",
                                          color: Colors.black),
                                    ),
                                    Icon(Icons.keyboard_arrow_right_outlined,
                                        size: 40, color: Colors.black),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TestEval(),
                            ),
                          );
                        },
                        child: Container(
                          height: 250.0,
                          width: 330.0,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/two/StMartha_Testing-Eval.jpg',
                                    width: 320,
                                    height: 180,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 8.0),
                                    Text(
                                      "Institutional Testing and \nEvaluation Center",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: "MontserratSemi",
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      size: 40,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DormOff(),
                            ),
                          );
                        },
                        child: Container(
                          height: 250.0,
                          width: 330.0,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/two/StMartha_DormOffice.jpg',
                                    width: 320,
                                    height: 180,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 8.0),
                                    Text(
                                      "Dormitory Office",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: "MontserratSemi",
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      size: 40,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MartDorm(),
                            ),
                          );
                        },
                        child: Container(
                          height: 250.0,
                          width: 330.0,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/two/StMartha_Dormitory.jpg',
                                    width: 320,
                                    height: 180,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 8.0),
                                    Text(
                                      "Dormitory",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: "MontserratSemi",
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      size: 40,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
            )));
  }
}

class SFDJ extends StatefulWidget {
  const SFDJ({Key? key}) : super(key: key);

  @override
  _SFDJState createState() => _SFDJState();
}

class _SFDJState extends State<SFDJ> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'San Francisco De \nJavier Building (SFJ)',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/three/SFJ.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PresOff(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/three/SFJ_PresidentOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "President's Office",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UnivLib(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/three/SFJ_UnivLib.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "University Library",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Theater(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/three/SFJ_UnivTheater.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "University Theater",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class STL extends StatefulWidget {
  const STL({Key? key}) : super(key: key);

  @override
  _STLState createState() => _STLState();
}

class _STLState extends State<STL> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'St. Therese of Liseux Building',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Tan",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/four/STL.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SHTMdean(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/four/STL_SHTM-DeansOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "School of Hospitality and Tourism \nManagement Dean's Office",
                                        style: TextStyle(
                                            fontSize: 15.5,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class WNC extends StatefulWidget {
  const WNC({Key? key}) : super(key: key);

  @override
  _WNCState createState() => _WNCState();
}

class _WNCState extends State<WNC> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Warehouse & Carpentry',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/five/WC.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text("Beside HAU's Side Gate Entrance",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class YC extends StatefulWidget {
  const YC({Key? key}) : super(key: key);

  @override
  _YCState createState() => _YCState();
}

class _YCState extends State<YC> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Yellow Canteen',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/six/YellowCanteen.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text(
                            "Between Warehouse and Carpentry and\nSt. Gabriel Hall Building (SGH)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SGH extends StatefulWidget {
  const SGH({Key? key}) : super(key: key);

  @override
  _SGHState createState() => _SGHState();
}

class _SGHState extends State<SGH> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'St. Gabriel Hall Building (SGH)',
                style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/seven/SGH.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text("Building: St. Gabriel Hall Building (SGH)\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("Beside Yellow Canteen",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SRH extends StatefulWidget {
  const SRH({Key? key}) : super(key: key);

  @override
  _SRHState createState() => _SRHState();
}

class _SRHState extends State<SRH> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'St. Raphael Hall Building (SRH)',
                style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/eight/SRH.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text("Building: St. Raphael Hall Building (SRH)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text(
                            "Between St. Gabriel Hall Building (SGH) and St. Michael Hall Building (SMH)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class StMikeHall extends StatefulWidget {
  const StMikeHall({Key? key}) : super(key: key);

  @override
  _StMikeState createState() => _StMikeState();
}

class _StMikeState extends State<StMikeHall> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'St. Michael Hall Building (SMH)',
                style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/nine/SMH.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text("Building: St. Michael Hall Building (SMH)\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("Beside Geromin G. Nepomuceno Building (GGN)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class GGN extends StatefulWidget {
  const GGN({Key? key}) : super(key: key);

  @override
  _GGNState createState() => _GGNState();
}

class _GGNState extends State<GGN> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;
  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Geromin G. Nepomuceno Building (GGN)',
                style: TextStyle(
                  fontSize: 19.0,
                  fontFamily: "Tan",
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/ten/GGN.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GGNcanteen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/ten/GGN_Canteen.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "GGN Canteen",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: "MontserratSemi",
                                          color: Colors.black,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HSguide(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/ten/GGN_HSGuideOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "High School Guidance\nOffice",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HSlib(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/ten/GGN_HSLib.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "High School Library",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InterSec(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/ten/GGN_InternetSection.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Internet Section",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MediaCenter(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/ten/GGN_MediaCenter.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Instructional Media\nCenter",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FacRoom(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/ten/GGN_PrinOffice-FacRoom.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Principal's Office & \nFaculty Room",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class PGN extends StatefulWidget {
  const PGN({Key? key}) : super(key: key);

  @override
  _PGNState createState() => _PGNState();
}

class _PGNState extends State<PGN> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Peter G. Nepomuceno Building (PGN)',
                style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/eleven/PGN.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PGNClinic(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/eleven/PGN_Clinic.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Medical & Dental Clinic",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PGNguide(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/eleven/PGN_CollegeGuideOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "College Guidance Office",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudAffair(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/eleven/PGN_OSAOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Office of Student Affairs and \n Scholarship & Grant Office",
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SBAdean(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/eleven/PGN_SBA_DeansOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "School of Business and \nAccountancy Dean's Office",
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UnivGuide(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/eleven/PGN_UnivGuideOff.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "University Guidance Office and \nCareer & Placement Office",
                                        style: TextStyle(
                                            fontSize: 16.5,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class DJDN extends StatefulWidget {
  const DJDN({Key? key}) : super(key: key);

  @override
  _DJDNState createState() => _DJDNState();
}

class _DJDNState extends State<DJDN> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Don Juan G. Nepomuceno\nBuilding (DJDN)',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/twelve/DJDN.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AccOff(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/twelve/DJDN_AccOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Accounts and Collection\nOffice",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Teller(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/twelve/DJDN_TellersOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Tellers Office",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class APS extends StatefulWidget {
  const APS({Key? key}) : super(key: key);

  @override
  _APSState createState() => _APSState();
}

class _APSState extends State<APS> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Archbishop Pedro Santos Building (APS)',
                style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/thirteen/APS.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => APSbook(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/thirteen/APS_BookStore.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "APS Bookstore",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => APScomp(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/thirteen/APS_CompRoom.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "APS Computer Room",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SEAdean(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/thirteen/APS_SEA_DeansOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "School of Engineering and\nArchitecture Dean's Office",
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class MGN extends StatefulWidget {
  const MGN({Key? key}) : super(key: key);

  @override
  _MGNState createState() => _MGNState();
}

class _MGNState extends State<MGN> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Mamerto G. Nepomuceno Building (MGN)',
                style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/fourteen/MGN.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CCJEFfac(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/fourteen/MGN_CCJEF_ConsulRoom.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "College of Criminal Justice Education,\nForensics' Consultation Room \nand Faculty Room",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CCJEFdean(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/fourteen/MGN_CCJEF_DeansOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "College of Criminal Justice Education\nand Forensics Dean's Office",
                                        style: TextStyle(
                                            fontSize: 14.5,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForLab(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/fourteen/MGN_CCJEF_SciLab.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Forensic Science Laboratory",
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MGNcomlab(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/fourteen/MGN_CompLab.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Computer Laboratory &\nCICT Printing Section",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MGNguide(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/fourteen/MGN_GuideOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Guidance Office",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class Chap extends StatefulWidget {
  const Chap({Key? key}) : super(key: key);

  @override
  _ChapState createState() => _ChapState();
}

class _ChapState extends State<Chap> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Chapel of the Holy Guardian Angel',
                style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/fifteen/ChapelofHGA.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text(
                            "In-front of St. Joseph Hall Building (SJH) and\nbehind Sister Josefina Nepomuceno Formation Center",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SJNFC extends StatefulWidget {
  const SJNFC({Key? key}) : super(key: key);

  @override
  _SJNCState createState() => _SJNCState();
}

class _SJNCState extends State<SJNFC> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Sister Josefina Nepomuceno\nFormation Center',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/sixteen/Josefina_FormCenter.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text("In-front of Covered Court",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SJH extends StatefulWidget {
  const SJH({Key? key}) : super(key: key);

  @override
  _SJHState createState() => _SJHState();
}

class _SJHState extends State<SJH> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'St. Joseph Hall Building (SJH)',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/seventeen/SJH.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Consul(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/seventeen/SJH_ConsulRoom.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "College of Information and\nCommunications Technology\nConsultation Room",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudCouncil(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      'images/seventeen/SJH_CSC-CCJEF-SOC-Office.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Student Council Offices \n(CSC-CCJEF & CICT-CSC)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SASdean(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/seventeen/SJH_SAS_DeansOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "School of Arts and Sciences \nDean's Office",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SOCdean(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/seventeen/SJH_SOC_DeansOffice.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "School of Computing \nDean's Office",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SOCfacu(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/seventeen/SJH_SOC_FacRoom.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "School of Computing\nFaculty Room",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SH extends StatefulWidget {
  const SH({Key? key}) : super(key: key);

  @override
  _SHState createState() => _SHState();
}

class _SHState extends State<SH> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Sacred Heart Building (SH)',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/eighteen/SHBuilding.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text(
                            "Beside Archbishop Pedro Santos Building (APS) and Covered Court",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class CovCour extends StatefulWidget {
  const CovCour({Key? key}) : super(key: key);

  @override
  _CovCourState createState() => _CovCourState();
}

class _CovCourState extends State<CovCour> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Covered Court',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/nineteen/CoveredCourt.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text(
                            "Beside Archbishop Pedro Santos Building (APS) and in-front of Sister Josefina Nepomuceno Formation Center",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class IHG extends StatefulWidget {
  const IHG({Key? key}) : super(key: key);

  @override
  _IHGState createState() => _IHGState();
}

class _IHGState extends State<IHG> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Immaculate Heart Gymnasium',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/twenty/ImmacGym.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text(
                            "Beside HAU Covered Court and in-front of Sister Josefina Nepomuceno Formation Center",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class IHGA extends StatefulWidget {
  const IHGA({Key? key}) : super(key: key);

  @override
  _IHGAState createState() => _IHGAState();
}

class _IHGAState extends State<IHGA> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Immaculate Heart Gymnasium Annex',
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xff701010),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/twentyone/ImmacGymAnnex.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("LOCATION\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4c5154))),
                        Text(
                            "Beside Immaculate Heart Gymnasium and\nin-front of Sister Josefina Nepomuceno Formation Center",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class Park extends StatefulWidget {
  const Park({Key? key}) : super(key: key);

  @override
  _ParkState createState() => _ParkState();
}

class _ParkState extends State<Park> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Parking Spot',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Colors.blueAccent,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xffbaeaff),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Text("AVAILABLE PARKING SPOTS HERE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff00306f))),
                        Text("• In-front of Immaculate Heart Gymnasium",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff425e79))),
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffbfd9ff),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/twentyone/ImmacGymAnnex.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("• In-front of Chapel of the Holy Guardian Angel",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff425e79))),
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffbfd9ff),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/fifteen/ChapelofHGA.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("• In-front of St. Joseph Hall Building",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff425e79))),
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffbfd9ff),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/seventeen/SJH.jpg',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SOC extends StatefulWidget {
  const SOC({Key? key}) : super(key: key);

  @override
  _SOCState createState() => _SOCState();
}

class _SOCState extends State<SOC> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'School of Computing',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Colors.orange,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xffffd594),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xfff0ad86),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/front/soc.png',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("ABOUT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xfffa9254))),
                        Text(
                            "The thrust of the college is to support the needs of the industry in the varying fields of software development in mobile, web, game, and desktop applications as well as to produce competent graduates who can develop innovative computing solutions by analyzing processes, algorithms, big data, network communications, cybersecurity, and business analytics. It aims to produce expert animators, multimedia practitioners, network professionals, programmers, data analysts, and cybersecurity professionals.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nVISION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xfffa9254))),
                        Text(
                            "A Center of Excellence in ICT education through relevant curricular programs implemented by highly competent individuals who engage in research and countryside development and supported by the industry and state-of-the-art facilities.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nMISSION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xfffa9254))),
                        Text(
                            "To offer quality education and produce technically-competent and globally competitive professionals who are self-reliant, morally and spiritually upright, adaptive to current and emerging technologies, and who contribute to community building.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nDEPARTMENT BUILDING:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Color(0xfffa9254))),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SJH(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/seventeen/SJH.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "St. Joseph Hall Building",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SBA extends StatefulWidget {
  const SBA({Key? key}) : super(key: key);

  @override
  _SBAState createState() => _SBAState();
}

class _SBAState extends State<SBA> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'School of Business \nand Accountancy',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Color(0xf4bea01d),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xf4fff0a9),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xfff5d094),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/front/sba.png',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("ABOUT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xffb6a33a))),
                        Text(
                            "The thrust of the college is to support the needs of the industry in the varying fields of software development in mobile, web, game, and desktop applications as well as to produce competent graduates who can develop innovative computing solutions by analyzing processes, algorithms, big data, network communications, cybersecurity, and business analytics. It aims to produce expert animators, multimedia practitioners, network professionals, programmers, data analysts, and cybersecurity professionals.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nVISION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xffb6a33a))),
                        Text(
                            "A Center of Excellence in ICT education through relevant curricular programs implemented by highly competent individuals who engage in research and countryside development and supported by the industry and state-of-the-art facilities.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nMISSION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xffb6a33a))),
                        Text(
                            "To offer quality education and produce technically-competent and globally competitive professionals who are self-reliant, morally and spiritually upright, adaptive to current and emerging technologies, and who contribute to community building.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nDEPARTMENT BUILDING:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Color(0xffb6a33a))),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PGN(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/eleven/PGN.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Peter G. Nepomuceno\nBuilding (PGN)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SEA extends StatefulWidget {
  const SEA({Key? key}) : super(key: key);

  @override
  _SEAState createState() => _SEAState();
}

class _SEAState extends State<SEA> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'School of Engineering\nand Architecture',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Colors.red,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xffff938b),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/front/sea.png',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("ABOUT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff650606))),
                        Text(
                            "In all its years of existence, the College of Engineering has been committed to the objective of \"providing well-rounded professional training to students who can make a definite contribution to the industrialization and economic progress of the Philippine through applied Science and Technology.\" The School of Engineering and Architecture realizes the importance of its role in present times of making engineering education relevant as it continues to support national development efforts.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff500f0f))),
                        Text("\nVISION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff650606))),
                        Text(
                            "A center of excellence in engineering and architecture education imbued with Catholic mission and identity serving as a role-model catalyst for countryside development.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff500f0f))),
                        Text("\nMISSION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff650606))),
                        Text(
                            "The School shall provide accessible quality engineering and architecture education leading to highly competent professional; continually contribute to the advancement of knowledge and technology through research activities; and support countryside development through environmental preservation and community involvement.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff500f0f))),
                        Text("\nDEPARTMENT BUILDING:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Color(0xff650606))),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SH(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/eighteen/SHBuilding.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Sacred Heart Building (SH)",
                                        style: TextStyle(
                                            fontSize: 18.5,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => STL(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/four/STL.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "St. Therese of Liseux\nBuilding (STL)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SED extends StatefulWidget {
  const SED({Key? key}) : super(key: key);

  @override
  _SEDState createState() => _SEDState();
}

class _SEDState extends State<SED> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'School Of Education',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Colors.blue,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xffacbede),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff6ed0f0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/front/sed.png',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("ABOUT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff062558))),
                        Text(
                            "In 1947, the tertiary department was established with the two-year Junior Normal College or Elementary Teacher’s Certificate in response to the growing need for teachers in public schools.  At present, there are four (4) teacher education programs namely: Bachelor of Elementary Education (BEEd), Bachelor of Special Needs Education (BSNEd), bachelor of Physical Education (BPEd) and Bachelor of Secondary Education (BSEd) majors in English, Filipino, Mathematics, Science, Social Studies and Religious and Values Education.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nVISION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff062558))),
                        Text(
                            "To become the leading Catholic institution of teacher education in the region that serves as a benchmark for quality instruction, research, and other best teaching-learning practices.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nMISSION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff062558))),
                        Text(
                            "To provide quality education that enables students to be critical thinkers, mindful of their responsibilities to society, and equipped with holistic education catering to the heart and soul as well as to the body and mind. ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nDEPARTMENT BUILDING:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Color(0xff062558))),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SJH(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/seventeen/SJH.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "St. Joseph Hall\nBuilding (SJH)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SHTM extends StatefulWidget {
  const SHTM({Key? key}) : super(key: key);

  @override
  _SHTMState createState() => _SHTMState();
}

class _SHTMState extends State<SHTM> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'School of Hospitality and \nTourism Management',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Colors.pink,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xfffdb5f3),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xfff087ba),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/front/shtm.png',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("ABOUT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff66005a))),
                        Text(
                            "It became the School of Hospitality and Tourism Management in the year 2017 following its achievement of a 7-year accreditation under the Accreditation Commission for Programs in Hospitality Administration (ACPHA), the first university in Southeast Asia to be granted as such. In the same year, it started offering the Doctor of Business Administration with concentration in Hospitality and Tourism Management, in addition to its existing Master of Science in Hospitality and Tourism Management program formerly the Master of Science in Hotel and Restaurant Management program. ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nVISION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff66005a))),
                        Text(
                            "A center of excellence in hospitality and tourism management education in Asia-Pacific region.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nMISSION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff66005a))),
                        Text(
                            "To provide the students with broad-based views of the service management, hospitality, and tourism disciplines based on the underlying concept of quality service management.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nDEPARTMENT BUILDING:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Color(0xff66005a))),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => STL(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/four/STL.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "St. Therese of Liseux \nBuilding (STL)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class CCJEF extends StatefulWidget {
  const CCJEF({Key? key}) : super(key: key);

  @override
  _CCJEFState createState() => _CCJEFState();
}

class _CCJEFState extends State<CCJEF> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'College of Criminal Justice\nEducation and Forensics',
                style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Colors.purple,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xffd38fff),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffe2b9f6),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/front/ccjef.png',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("ABOUT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4a0472))),
                        Text(
                            "In 2009, the College of Criminal Justice Education was established and offered the Bachelor of Science in Criminology that will produce graduates who are professionally competent and morally upright professionals who can perform efficient services in crime prevention, crime detection and investigation, law enforcement, forensic science and rehabilitation of offenders, among others.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nVISION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4a0472))),
                        Text(
                            "A center of excellence in the criminal justice education and forensics producing top caliber professionals who are globally competitive and are equipped with well-founded knowledge in the field of law enforcement, criminal justice and forensics.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nMISSION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff4a0472))),
                        Text(
                            "To nurture its students with the comprehensive and updated knowledge, develop their skills and high competences, in the field of law enforcement criminal justice and forensics science.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nDEPARTMENT BUILDING:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Color(0xff4a0472))),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MGN(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/fourteen/MGN.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Mamerto G. Nepomuceno\nBuilding (MGN)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SJH(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/seventeen/SJH.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "St. Joseph Hall\nBuilding (SJH)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class SAS extends StatefulWidget {
  const SAS({Key? key}) : super(key: key);

  @override
  _SASState createState() => _SASState();
}

class _SASState extends State<SAS> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'School of Arts and Sciences',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Color(0xffffffff)),
              ),
              backgroundColor: Color(0xff440101),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xffffbab6),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xff701010),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/front/sas.png',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("ABOUT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff520000))),
                        Text(
                            "The School of Arts and Sciences provides the student with a liberal education background in the humanities and social sciences. It offers three fields of specialization with the academic fields of study he pursues. The sense of national identity and Christian orientation which the school instills is the essence of HAU education.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nVISION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff520000))),
                        Text(
                            "The School of Arts and Sciences is a premiere college that serves as an avenue for developing students\’ learning competencies within and across the many disciplines of human inquiry, particularly in mass media and psychology, attaining excellence in instruction, research and community development.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nMISSION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff520000))),
                        Text(
                            "To produce professionally competent, morally upright, socially responsive and spiritually mature persons through holistic and transformative liberal education.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nDEPARTMENT BUILDING:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Color(0xff520000))),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MGN(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/fourteen/MGN.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Mamerto G. Nepomuceno\nBuilding (MGN)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PGN(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/eleven/PGN.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Peter G. Nepomuceno\nBuilding (PGN)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SJH(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330.0,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/seventeen/SJH.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "St. Joseph Hall\nBuilding (SJH)",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class BED extends StatefulWidget {
  const BED({Key? key}) : super(key: key);

  @override
  _BEDState createState() => _BEDState();
}

class _BEDState extends State<BED> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Basic Education',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Colors.red,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xffbf8686),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffff9393),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/front/bed.png',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("ABOUT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff540000))),
                        Text(
                            "The HAU Basic Education Department (BED) offers Junior High School (JHS) and Senior High School (SHS) programs. The JHS program provides curricular and co-curricular activities that respond to the challenges of an increasingly competitive, intellectual, and technological community. The SHS program aims to equip students with the global skills, competencies, and knowledge needed to achieve successful career paths.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nSTRANDS ARE:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Color(0xff540000))),
                        Text(
                            "• Accountancy, Business, and Management (ABM)\n• Science, Technology, Engineering, and Mathematics (STEM)\n• Humanities and Social Sciences (HUMSS)\n• General Academic Strand (GAS)\nTechnical-Vocational-Livelihood  - Home Economics (TVL - HE)\n• Technical-Vocational-Livelihood  - Information Communication Technology (TVL - ICT)",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff4c5154))),
                        Text("\nDEPARTMENT BUILDING:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Color(0xff540000))),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GGN(),
                              ),
                            );
                          },
                          child: Container(
                            height: 250.0,
                            width: 330,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'images/ten/GGN.jpg',
                                      width: 320,
                                      height: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Geromin G. Nepomuceno\nBuilding (GGN)",
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontFamily: "MontserratSemi",
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined,
                                          size: 40, color: Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class GS extends StatefulWidget {
  const GS({Key? key}) : super(key: key);

  @override
  _GSState createState() => _GSState();
}

class _GSState extends State<GS> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Graduate School',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: "Tan",
                    //fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: Colors.black,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 20),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            backgroundColor: Color(0xff939393),
            body: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Scrollbar(
                    isAlwaysShown: _isAlwaysShown,
                    showTrackOnHover: _showTrackOnHover,
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: 275.0,
                          width: 330,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffb0aaaa),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'images/front/gs.png',
                                    width: 320,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("ABOUT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff525050))),
                        Text(
                            "CHED declared the University's Information and Communications Technology program a center of development, and the pioneer Nursing graduates also scored an impressive passing rate in the government licensure exam. In 1965, the Graduate School opened, with Dr. Lourdes Reyes as first Dean. It offered MA in Education major in Elementary Education. In 2017, HAU introduced pioneering and cutting-edge graduate programs: Master of Business Administration (MBA) in Leadership for a Sustainable Economy program or Green MBA, Professional Science Master's (PSM) in Cybersecurity, and Master of Arts in Communication.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff515354))),
                        Text("\nVISION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff525050))),
                        Text(
                            "The Graduate School envisions itself to be one of the centers of excellence in graduate education and research in the Asia Pacific Region that will produce graduates who are role model catalysts for countryside development in the fields of Arts and Sciences, Business, Education, Information Technology, Engineering and Nursing education.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff515354))),
                        Text("\nMISSION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff525050))),
                        Text(
                            "The Graduate School offers accessible quality graduate education and research experiences that transforms professionals, practitioners, industry leaders into persons of conscience, competence and compassion, community, and societal responsibility, leadership and scholarship and global citizenship.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff515354))),
                        Text("\nOBJECTIVES",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Anteb",
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0xff525050))),
                        Text(
                            "To realize the vision of the Graduate School, the following objectives must be achieved:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff515354))),
                        Text(
                            "\na. Offer courses which are dynamic and responsive to changing global needs and abreast with current trends.\nb. Build and maintain a pool of research-oriented and competent faculty members who are experts in their field of specialization.\nc. Produce graduates who are influential leaders of society imbued with the highest moral and ethical standards.\nd. Provide an atmosphere that is professional and conducive to learning which nurtures a culture that promotes excellence, creativity and innovation, critical thinking and life long learning.\ne. Play an advocacy role in academic excellence, research undertakings and community service; and\nd. Play an advocacy role in academic excellence, research undertakings and community service and\nf. Participate actively in community outreach projects through the allocation of knowledge and skills as well as the execution of research capabilities.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Roman",
                                fontSize: 20.0,
                                color: Color(0xff515354))),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}

class HRDO extends StatefulWidget {
  const HRDO({Key? key}) : super(key: key);

  @override
  _HRDOState createState() => _HRDOState();
}

class _HRDOState extends State<HRDO> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Human Resource Development Office',
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/one/RedBuilding_HumanOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Plaza De Corazon Building (Red Building)\n\nFloor: 2nd Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RBRedDorm extends StatefulWidget {
  const RBRedDorm({Key? key}) : super(key: key);

  @override
  _RBRedDormState createState() => _RBRedDormState();
}

class _RBRedDormState extends State<RBRedDorm> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dormitory',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/one/RedBuilding_Dormitory.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text("Building: Plaza De Corazon Building (Red Building)",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RedDorm extends StatefulWidget {
  const RedDorm({Key? key}) : super(key: key);

  @override
  _RedDormState createState() => _RedDormState();
}

class _RedDormState extends State<RedDorm> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dormitory',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/one/RedBuilding_Dormitory.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text("Building: Plaza De Corazon Building (Red Building)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SMHadmiss extends StatefulWidget {
  const SMHadmiss({Key? key}) : super(key: key);

  @override
  _SMHadmissState createState() => _SMHadmissState();
}

class _SMHadmissState extends State<SMHadmiss> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Admission Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/two/StMartha_AdmissionsOff.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: St. Martha Hall Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TestEval extends StatefulWidget {
  const TestEval({Key? key}) : super(key: key);

  @override
  _TestEvalState createState() => _TestEvalState();
}

class _TestEvalState extends State<TestEval> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Institutional Testing and\nEvaluation Center',
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/two/StMartha_Testing-Eval.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: St. Martha Hall Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DormOff extends StatefulWidget {
  const DormOff({Key? key}) : super(key: key);

  @override
  _DormOffState createState() => _DormOffState();
}

class _DormOffState extends State<DormOff> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dormitory Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/two/StMartha_DormOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: St. Martha Hall Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MartDorm extends StatefulWidget {
  const MartDorm({Key? key}) : super(key: key);

  @override
  _MartDormState createState() => _MartDormState();
}

class _MartDormState extends State<MartDorm> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Dormitory",
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/two/StMartha_Dormitory.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text("Building: St. Martha Hall Building",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PresOff extends StatefulWidget {
  const PresOff({Key? key}) : super(key: key);

  @override
  _PresOffState createState() => _PresOffState();
}

class _PresOffState extends State<PresOff> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'President\'s Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/three/SFJ_PresidentOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: San Francisco De Javier Building\n\nFloor: 4th Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UnivLib extends StatefulWidget {
  const UnivLib({Key? key}) : super(key: key);

  @override
  _UnivLibState createState() => _UnivLibState();
}

class _UnivLibState extends State<UnivLib> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'University Library',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/three/SFJ_UnivLib.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: San Francisco De Javier Building\n\nFloor: 1st & 2nd Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Theater extends StatefulWidget {
  const Theater({Key? key}) : super(key: key);

  @override
  _TheaterState createState() => _TheaterState();
}

class _TheaterState extends State<Theater> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'University Theater',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/three/SFJ_UnivTheater.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: San Francisco De Javier Building\n\nFloor: 1st Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SHTMdean extends StatefulWidget {
  const SHTMdean({Key? key}) : super(key: key);

  @override
  _SHTMdeanState createState() => _SHTMdeanState();
}

class _SHTMdeanState extends State<SHTMdean> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'School of Hospitality and Tourism\nManagement Dean\'s Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/four/STL_SHTM-DeansOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: St. Therese of Liseux Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GGNcanteen extends StatefulWidget {
  const GGNcanteen({Key? key}) : super(key: key);

  @override
  _GGNcanteenState createState() => _GGNcanteenState();
}

class _GGNcanteenState extends State<GGNcanteen> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GGN Canteen',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/ten/GGN_Canteen.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Geromin G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HSguide extends StatefulWidget {
  const HSguide({Key? key}) : super(key: key);

  @override
  _HSguideState createState() => _HSguideState();
}

class _HSguideState extends State<HSguide> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'High School Guidance\nOffice',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/ten/GGN_HSGuideOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Geromin G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HSlib extends StatefulWidget {
  const HSlib({Key? key}) : super(key: key);

  @override
  _HSlibState createState() => _HSlibState();
}

class _HSlibState extends State<HSlib> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'High School Library',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/ten/GGN_HSLib.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Geromin G. Nepomuceno Building\n\nFloor: 2nd Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InterSec extends StatefulWidget {
  const InterSec({Key? key}) : super(key: key);

  @override
  _InterSecState createState() => _InterSecState();
}

class _InterSecState extends State<InterSec> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Internet Section',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/ten/GGN_InternetSection.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Geromin G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MediaCenter extends StatefulWidget {
  const MediaCenter({Key? key}) : super(key: key);

  @override
  _MediaCenterState createState() => _MediaCenterState();
}

class _MediaCenterState extends State<MediaCenter> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Instructional Media Center',
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/ten/GGN_MediaCenter.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Geromin G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FacRoom extends StatefulWidget {
  const FacRoom({Key? key}) : super(key: key);

  @override
  _FacRoomState createState() => _FacRoomState();
}

class _FacRoomState extends State<FacRoom> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Principal\'s Office & Faculty Room',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/ten/GGN_PrinOffice-FacRoom.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Geromin G. Nepomuceno Building\n\nFloor: 2nd Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PGNClinic extends StatefulWidget {
  const PGNClinic({Key? key}) : super(key: key);

  @override
  _PGNClinicState createState() => _PGNClinicState();
}

class _PGNClinicState extends State<PGNClinic> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Medical & Dental Clinic',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/eleven/PGN_Clinic.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Peter G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PGNguide extends StatefulWidget {
  const PGNguide({Key? key}) : super(key: key);

  @override
  _PGNguideState createState() => _PGNguideState();
}

class _PGNguideState extends State<PGNguide> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'College Guidance Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/eleven/PGN_CollegeGuideOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Peter G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StudAffair extends StatefulWidget {
  const StudAffair({Key? key}) : super(key: key);

  @override
  _StudAffairState createState() => _StudAffairState();
}

class _StudAffairState extends State<StudAffair> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Office of Student Affairs and Scolarship & Grant Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/eleven/PGN_OSAOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Peter G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SBAdean extends StatefulWidget {
  const SBAdean({Key? key}) : super(key: key);

  @override
  _SBAdeanState createState() => _SBAdeanState();
}

class _SBAdeanState extends State<SBAdean> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'School of Business and\nAccountancy Dean\'s Office',
            style: TextStyle(
                fontSize: 19.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/eleven/PGN_SBA_DeansOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Peter G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UnivGuide extends StatefulWidget {
  const UnivGuide({Key? key}) : super(key: key);

  @override
  _UnivGuideState createState() => _UnivGuideState();
}

class _UnivGuideState extends State<UnivGuide> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'University Guidance Office\nand Career & Placement Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/eleven/PGN_UnivGuideOff.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Peter G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AccOff extends StatefulWidget {
  const AccOff({Key? key}) : super(key: key);

  @override
  _AccOffState createState() => _AccOffState();
}

class _AccOffState extends State<AccOff> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Accounts and Collection Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/twelve/DJDN_AccOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Don Juan G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Teller extends StatefulWidget {
  const Teller({Key? key}) : super(key: key);

  @override
  _TellerState createState() => _TellerState();
}

class _TellerState extends State<Teller> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tellers Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/twelve/DJDN_TellersOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Don Juan G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class APSbook extends StatefulWidget {
  const APSbook({Key? key}) : super(key: key);

  @override
  _APSbookState createState() => _APSbookState();
}

class _APSbookState extends State<APSbook> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'APS Bookstore',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/thirteen/APS_BookStore.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Archbishop Pedro Santos Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class APScomp extends StatefulWidget {
  const APScomp({Key? key}) : super(key: key);

  @override
  _APScompState createState() => _APScompState();
}

class _APScompState extends State<APScomp> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'APS Computer Room',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/thirteen/APS_CompRoom.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Archbishop Pedro Santos Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SEAdean extends StatefulWidget {
  const SEAdean({Key? key}) : super(key: key);

  @override
  _SEAdeanState createState() => _SEAdeanState();
}

class _SEAdeanState extends State<SEAdean> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'School of Engineering and Architecture Dean Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/thirteen/APS_SEA_DeansOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Archbishop Pedro Santos Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CCJEFfac extends StatefulWidget {
  const CCJEFfac({Key? key}) : super(key: key);

  @override
  _CCJEFfacState createState() => _CCJEFfacState();
}

class _CCJEFfacState extends State<CCJEFfac> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'CCJEF Consultation and\nFaculty Room',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/fourteen/MGN_CCJEF_ConsulRoom.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Mamerto G. Nepomuceno Building\n\nFloor: 2nd Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CCJEFdean extends StatefulWidget {
  const CCJEFdean({Key? key}) : super(key: key);

  @override
  _CCJEFdeanState createState() => _CCJEFdeanState();
}

class _CCJEFdeanState extends State<CCJEFdean> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'CCJEF Dean\'s Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/fourteen/MGN_CCJEF_DeansOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Mamerto G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ForLab extends StatefulWidget {
  const ForLab({Key? key}) : super(key: key);

  @override
  _ForLabState createState() => _ForLabState();
}

class _ForLabState extends State<ForLab> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Forensic Science Laboratory',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/fourteen/MGN_CCJEF_SciLab.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Mamerto G. Nepomuceno Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MGNcomlab extends StatefulWidget {
  const MGNcomlab({Key? key}) : super(key: key);

  @override
  _MGNcompbState createState() => _MGNcompbState();
}

class _MGNcompbState extends State<MGNcomlab> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Computer Laboratory & CICT Printing Section',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/fourteen/MGN_CompLab.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Mamerto G. Nepomuceno Building\n\nFloor: 2nd Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MGNguide extends StatefulWidget {
  const MGNguide({Key? key}) : super(key: key);

  @override
  _MGNguideState createState() => _MGNguideState();
}

class _MGNguideState extends State<MGNguide> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Guidance Office',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/fourteen/MGN_GuideOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: Mamerto G. Nepomuceno\n\nFloor: 2nd Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Consul extends StatefulWidget {
  const Consul({Key? key}) : super(key: key);

  @override
  _ConsulState createState() => _ConsulState();
}

class _ConsulState extends State<Consul> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'College of Information and\nCommunications Technology\nConsultation Room',
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/seventeen/SJH_ConsulRoom.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: St. Joseph Hall Building\n\nFloor: 2nd Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StudCouncil extends StatefulWidget {
  const StudCouncil({Key? key}) : super(key: key);

  @override
  _StudCouncilState createState() => _StudCouncilState();
}

class _StudCouncilState extends State<StudCouncil> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Student Council Offices\n(CSC-CCJEF & CSC-CICT)',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/seventeen/SJH_CSC-CCJEF-SOC-Office.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: St. Joseph Hall Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SASdean extends StatefulWidget {
  const SASdean({Key? key}) : super(key: key);

  @override
  _SASdeanState createState() => _SASdeanState();
}

class _SASdeanState extends State<SASdean> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'School of Arts and Science Dean\'s Offices',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/seventeen/SJH_SAS_DeansOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: St. Joseph Hall Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SOCdean extends StatefulWidget {
  const SOCdean({Key? key}) : super(key: key);

  @override
  _SOCdeanState createState() => _SOCdeanState();
}

class _SOCdeanState extends State<SOCdean> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'School of Computing Dean\'s Offices',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/seventeen/SJH_SOC_DeansOffice.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: St. Joseph Hall Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SOCfacu extends StatefulWidget {
  const SOCfacu({Key? key}) : super(key: key);

  @override
  _SOCfacuState createState() => _SOCfacuState();
}

class _SOCfacuState extends State<SOCfacu> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'School of Computing Faculty Room',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff8b5300),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xfffde4b0),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 500.0, // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        height: 275.0,
                        width: 330,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/seventeen/SJH_SEDFacRoom.jpg',
                                  width: 320,
                                  height: 250,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("LOCATION\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff4c5154))),
                      Text(
                          "Building: St. Joseph Hall Building\n\nFloor: Ground Floor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff4c5154))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppInfo extends StatefulWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  _AppInfoState createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  final ScrollController controller = ScrollController();
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'About MappyHAU',
            style: TextStyle(
                fontSize: 21.0,
                fontFamily: "Tan",
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff701010),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xffcfcbcb),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                // set the height of the ListView
                child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Text("\nAPP TITLE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff525050))),
                      Text("MappyHAU",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff515354))),
                      Text("\nDEVELOPERS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff525050))),
                      Text(
                          "Gabriel Paolo Baltazar\nLee Randell Reyes\nPauline Yvonn Sumang\nCarl Gabriel Yap",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff515354))),
                      Text("\nAPP DESCRIPTION",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Anteb",
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xff525050))),
                      Text(
                          "MappyHAU is an application particularly developed for Holy Angel University (HAU) students and new visitors who are unfamiliar with the whereabouts of the offices, buildings or departments. MappyHAU is a map of the university that shows the locations and descriptions of buildings. For example, if a student wanted to learn more about the School of Computing (SOC), they could just click on the icon, which would provide the location and information about the department. MappyHAU shows the user pictures of each building at Holy Angel University so that they may quickly figure out where they are heading. This app will be incredibly useful for new students or transferees who are unfamiliar with the school. This app could help them locate the areas they need such as finance office or their respective buildings.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roman",
                              fontSize: 20.0,
                              color: Color(0xff515354))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
