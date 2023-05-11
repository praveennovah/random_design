import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myapp(),
    ));

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basic Widgets",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        flexibleSpace: SafeArea(
          child: IconButton(
            icon: Icon(
              Icons.camera_alt,
              size: 55.0,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75.0),
          child: Container(
            color: Colors.lightGreen,
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: Text(
                "Howler",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          "KB",
          style: TextStyle(
              fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        elevation: 5.0,
      ),
      drawer: Drawer(
        elevation: 10.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Praveen',
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text('novahpraveen@gmail.com',
                  style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("PK", style: TextStyle(color: Colors.black)),
              ),
              decoration: BoxDecoration(color: Colors.black),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("KB", style: TextStyle(color: Colors.black)),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Inbox",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Divider(height: 0.5),
            ListTile(
              leading: Icon(Icons.alarm_add),
              title: Text("Alert",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Divider(height: 0.5),
            ListTile(
              leading: Icon(Icons.airlines_outlined),
              title: Text("Inbox",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Divider(height: 0.5),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "search",
            icon: Icon(Icons.search, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(Icons.add, color: Colors.black),
          )
        ],
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {},
          child: Text("click me"),
        )
      ],
    );
  }
}
