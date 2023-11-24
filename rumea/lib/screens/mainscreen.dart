import 'package:flutter/material.dart';
import 'package:rumea/screens//mainscreen.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';
//dial package


//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       title: 'Rumea',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MainScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    const List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
        style: optionStyle,
      ),
      Text(
        'Index 1: Business',
        style: optionStyle,
      ),
      Text(
        'Index 2: School',
        style: optionStyle,
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
              child: Text(
                "DIAL 360",
                style: TextStyle(color: Colors.black),
              )),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: DialPad(
                    enableDtmf: true,
                    outputMask: "(000) 000-0000",
// outputMask: "125",
                    backspaceButtonIconColor: Colors.amber,
                    makeCall: (number) {
                      print(number);
                    }))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _navigateToNextScreen(context);
          },
          backgroundColor: Colors.amber,
          child: Icon(
            Icons.import_contacts_sharp,
            size: 30.0,
            color: Colors.black,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MainScreen()));
  }
}


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Screen')),
      body: Center(
        child: Text(
          'This is a new screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),


    );
  }
}
