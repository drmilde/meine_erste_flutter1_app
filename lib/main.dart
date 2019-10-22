import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JansKleineSeite(),
    );
  }
}

class JansKleineSeite extends StatefulWidget {
  @override
  _JansKleineSeiteState createState() => _JansKleineSeiteState();
}

class _JansKleineSeiteState extends State<JansKleineSeite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dr Mildes Super Seite"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network("https://vignette.wikia.nocookie.net/bigbangtheory/images/9/96/Colonization-application.jpg/revision/latest?cb=20170116151747&path-prefix=de"),
            machMirNeReihe("Name:", "Jan-Torsten"),
            machMirNeReihe("Alter", "54"),
            machMirNeReihe("Kenntnisse", "wenige"),
            machMirNeReihe("Hobbies", "essen"),
          ],
        ),
      ),
    );
  }

  Widget machMirNeReihe(attribut, wert) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            attribut,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            wert,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
