import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text(
            "Hi man you are a liar",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Center(
        
          child: Padding(
            padding: new EdgeInsets.fromLTRB(90.0, 0, 90.0, 0),
            child: RaisedButton.icon(
                onPressed: (){},
                icon: Icon(
                  Icons.book_online,
                ),
                label: Text("Buy Now"),
                color: Colors.amber,
            )
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: Icon(
          Icons.import_contacts_sharp,
          size: 30.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
