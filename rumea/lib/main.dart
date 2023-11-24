import 'package:flutter/material.dart';
import 'screens/mainscreen.dart';
import 'screens/contacts.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){
          //
        }),
        title:  Text(
          "Dial360",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: (){
            //
          })
        ],
      ),

      body: Center(

          child: Padding(
              padding: new EdgeInsets.fromLTRB(90.0, 0, 90.0, 0),
              child: RaisedButton.icon(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp()));
                },
                icon: Icon(
                  Icons.book_online,
                ),
                label: Text("Buy Now"),
                color: Colors.amber,
              )
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactsScreen()));
        },
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
