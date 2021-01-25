import 'package:flutter/material.dart';
import 'Things.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'TèP', debugShowCheckedModeBanner: true, home: TepHomePage());
}

class TepHomePage extends StatefulWidget {
  @override
  _TepHomePageState createState() => _TepHomePageState();
}

class _TepHomePageState extends State<TepHomePage> {
  List<Things> things = new List<Things>();
  
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("TèP"), actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: () => settingsBtn())
        ]),
        body: ListView.builder(
            itemCount: things.length,
            itemBuilder: ((BuildContext context, int posizione) => Card(
                elevation: 2,
                child: ListTile(
                    title: Text(things[posizione].titolo),
                    subtitle: Text(things[posizione].text))))),
      );

  //addToList() {};
  settingsBtn() => {}; //TepHomePage();
}
// TODO settings page
class TepSettingsPage extends StatefulWidget {
  @override
  _TepSettingsPageState createState() => _TepSettingsPageState();
}

class _TepSettingsPageState extends State<TepHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: [IconButton(icon: null, onPressed: null)],
      ),
      body: Center());
}

ColorScheme tepColorScheme = ColorScheme(
  primary: Colors.blue[500],
  //or 25,118,210
  onPrimary: Colors.black,
  primaryVariant: Colors.blue[700],

  secondary: Colors.red[600],
  onSecondary: Colors.black,
  secondaryVariant: Colors.red[900],

  surface: Colors.white,
  onSurface: Colors.black,

  background: Colors.white,
  onBackground: Colors.black,

  error: Color(0xFFB00020),
  onError: Colors.white,
  brightness: Brightness.light,
);
