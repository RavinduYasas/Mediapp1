import 'package:flutter/material.dart';
import 'package:mediapp1/BMI/Bmi.dart';
import 'package:mediapp1/Reminder/Reminder.dart';
import 'package:mediapp1/medcard/medcardAdd.dart';
import 'package:mediapp1/medcard/medcardView.dart';

class Basepage extends StatefulWidget {
  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Basepage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        //  leading: Icon(Icon.menu),
        backgroundColor: Colors.transparent,
        elevation: 20,
        title: Text('WELCOME TO MED CARE'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.lightGreenAccent.shade400,
              Colors.greenAccent.shade700,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
        ),
      ),

      /* body: StaggeredGridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        children: <Widget>[myItems(Icons.graphic_eq, "MED CARD", 0xffed)],
                      ));
                            */

      backgroundColor: Colors.white,
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Ravindu Yasas"),
              accountEmail: new Text("ravinduyasasry.com"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            /*  ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text("Feedback"),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            */
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            /*
              ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () async {
                await _auth.signOut();
              },
            ),*/
          ],
        ),
      ),
      body: Container(
        /* decoration: BoxDecoration(
          //  image: DecorationImage(image: AssetImage("assets/unnamed.jpg")),
          ),*/
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.all(1.0),
          children: <Widget>[
            Card(
                margin: EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => MedcardAddPage()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.post_add_outlined,
                          size: 70.0,
                          color: Colors.pink[700],
                        ),
                        Text(
                          "New Med Card",
                          style: new TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => MedcardViewPage()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.list_alt,
                          size: 70.0,
                          color: Colors.blue[700],
                        ),
                        Text("View Med Card",
                            style: new TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    //  Navigator.push(context,
                    //      MaterialPageRoute(builder: (ctx) => MedcardViewPage()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.featured_play_list_outlined,
                          size: 70.0,
                          color: Colors.blue[700],
                        ),
                        Text("Delete Med Card",
                            style: new TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => ReminderPage()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.alarm_add,
                          color: Colors.orange[400],
                          size: 70.0,
                        ),
                        Text("Add Reminder",
                            style: new TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    //  Navigator.push(context,
                    //     MaterialPageRoute(builder: (ctx) => MedcardViewPage()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.event_available_outlined,
                          size: 70.0,
                          color: Colors.blue[700],
                        ),
                        Text("View Reminders",
                            style: new TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => BmiPage()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.calculate_rounded,
                          size: 70.0,
                          color: Colors.green[700],
                        ),
                        Text(
                          "My BMI",
                          style: new TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
