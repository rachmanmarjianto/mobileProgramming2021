import 'package:flutter/material.dart';
import 'registrasi.dart';

class Preference extends StatefulWidget {
  final List<String> genres = [
    "Horror",
    "Music",
    "Action",
    "Drama",
    "War",
    "Crime"
  ];
  final List<String> languages = ["Bahasa", "English", "Japanese", "Korean"];

  // const Preference({ Key? key }) : super(key: key);

  @override
  _PreferenceState createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  List<String> selectedGenres = [];
  String selectedLanguage = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 56,
                      margin: EdgeInsets.only(top: 20, bottom: 4),
                      child: GestureDetector(
                        child: Icon(Icons.arrow_back),
                        onTap: () {
                           Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => Registrasi()
                              )
                            );
                        },
                      ),
                    ),
                    Text(
                      "Select Your\nFavorite Genres",
                      style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Wrap(
                      spacing: 24,
                      runSpacing: 24,
                      children: generateGenreWidgets(context),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Movie Language\nYou Prefer?",
                      style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Wrap(
                      spacing: 24,
                      runSpacing: 24,
                      children: generateLangWidgets(context),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor: Color(0xFF503E9D),
                      child: Icon(Icons.arrow_forward),
                      onPressed: () {
                        
                      
                      },
                    )),
                    SizedBox(height: 50)
                  ],
                )
              ],
            )),
      );
  }
   List<Widget> generateGenreWidgets(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width - 2 * 24 - 24) / 2;

    return widget.genres
        .map((e) => SelectableBox(
              e,
              width: width,
              isSelected: selectedGenres.contains(e),
              onTap: () {
                onSelectGenre(e);
              },
            ))
        .toList();
  }

  List<Widget> generateLangWidgets(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width - 2 * 24 - 24) / 2;

    return widget.languages
        .map((e) => SelectableBox(
              e,
              width: width,
              isSelected: selectedLanguage == e,
              onTap: () {
                setState(() {
                  selectedLanguage = e;
                });
              },
            ))
        .toList();
  }

  void onSelectGenre(String genre) {
    if (selectedGenres.contains(genre)) {
      setState(() {
        selectedGenres.remove(genre);
      });
    } else {
      if (selectedGenres.length < 4) {
        setState(() {
          selectedGenres.add(genre);
        });
      }
    }
  }
}

 


class SelectableBox extends StatelessWidget {
  final bool isSelected;
  final bool isEnabled;
  final double width;
  final double height;
  final String text;
  final Function onTap;
  

  SelectableBox(this.text,
      {this.isSelected = false,
      this.isEnabled = true,
      this.width = 144,
      this.height = 60,
      required this.onTap
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap();
          }
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: (!isEnabled)
                  ? Color(0xFFE4E4E4)
                  : isSelected ? Color(0xFFFBD460) : Colors.transparent,
              border: Border.all(
                  color: (!isEnabled)
                      ? Color(0xFFE4E4E4)
                      : isSelected ? Colors.transparent : Color(0xFFE4E4E4))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color:Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16),
            ),
          ),
        ));
  }
}