import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'halRegis.dart';
// import 'halLogin.dart';

class pilihPage extends StatefulWidget {
  selectbox createState() => selectbox();
}

class selectbox extends State<pilihPage> {
  int checkedIndex = 0;
  int checkedIndex2 = 0;
  List titleBahasa = [
    "indonesia",
    "Japanese",
    "Arabic",
    "Russian",
  ];

  List titleGenre = [
    "Action",
    "Romance",
    "Drama",
    "Horror",
    "Gore",
    "Psychology",
  ];
  String genre = '';
  String bahasa = '';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = 75;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              title: Text('ini Genre'),
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    'Please Select',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, bottom: 20),
                  child: Text(
                    'Your Favorit Genre',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                ),
                GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(10),
                    itemCount: titleGenre.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (itemWidth / itemHeight),
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return buildCard(index);
                    }),
                Container(
                  margin: EdgeInsets.only(left: 20, bottom: 20),
                  child: Text(
                    'Your Prefere',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                ),
                GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(10),
                    itemCount: titleBahasa.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (itemWidth / itemHeight),
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      bahasa = titleBahasa[index];
                      return buildCard2(index);
                    }),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
                SnackBarDisplay(bahasa, genre);
              },
              child: const Icon(Icons.arrow_forward_sharp),
              backgroundColor: Colors.green,
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              elevation: 0.0,
              child: Container(
                height: 50,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          )
        ],
      ),
    );
  }

  //Card2
  Widget buildCard2(int index) {
    bool checked = index == checkedIndex;
    String name = titleBahasa[index];
    return GestureDetector(
      onTap: () {
        setState(() {
          checkedIndex = index;
          bahasa = titleBahasa[index];
        });
      },
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child: Card(
              color: checked ? Colors.green : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                child: Center(child: Text(name)),
              ),
            ),
          )
        ],
      ),
    );
  }

  //card1
  Widget buildCard(int index) {
    bool checked2 = index == checkedIndex2;
    String name = titleGenre[index];
    return GestureDetector(
      onTap: () {
        setState(() {
          checkedIndex2 = index;
          genre = titleGenre[index];
        });
      },
      child: Stack(
        children: <Widget>[
          Container(
            height: 100,
            padding: EdgeInsets.all(5),
            child: Card(
              elevation: 2,
              color: checked2 ? Colors.red : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                child: Center(child: Text(name)),
              ),
            ),
          )
        ],
      ),
    );
  }

  void SnackBarDisplay(String bahasa, String genre) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Genre : ' + genre + ' dan bahasa : ' + bahasa)),
    );
  }
}
