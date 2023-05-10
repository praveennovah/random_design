import 'package:flutter/material.dart';
import 'tabs/calls.dart';
import 'tabs/camera.dart';
import 'tabs/status.dart';
import 'tabs/chats.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myapp(),
    theme: ThemeData(
      primaryColor: const Color(0xff075e54),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: const Color(0xff25d366)),
    ),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin {
  var tabController;

  void iniState() {
    super.initState();
    TabController tabController;
    TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            centerTitle: false,
            backgroundColor: Color(0xff075e54),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              controller: tabController,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Text("CHATS"),
                Text("STATUS"),
                Text("CALLS"),
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              controller: tabController,
              children: [
                camera(),
                chats(),
                status(),
                calls(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
          )),
    );
  }
}
