import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'messages.dart';

void main(){
  runApp(MyFirst());
}

class MyFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: CalendarView(),
    );
  }
}

class CalendarView extends StatefulWidget {
  @override
  _CalendarViewState createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  CalendarController _calendarController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home,
            color: Colors.white,
          ),

        ),
        title: Text("Calendar"),
        titleSpacing: 0,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.person), onPressed: (){}),
          IconButton(icon: Icon(Icons.notifications),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MesssagesApp()),
                );
          }),
        ],
      ),
      body: Column(
        children: [
          TableCalendar(calendarController: _calendarController)
        ],
      ),
    );
  }
}

