import 'package:flutter/material.dart';
void main () {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tani()
    );
  }
}

class Tani extends StatefulWidget {
  const Tani({super.key});

  @override
  State<Tani> createState() => _TaniState();
}

class _TaniState extends State<Tani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Recent"),
              leading: Icon(Icons.alarm),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hello World"),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Image"),
              leading: Icon(Icons.image),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hello Image "),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Video"),
              leading: Icon(Icons.movie),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hello Ripon Video"),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Sd Card"),
              leading: Icon(Icons.sd_card),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.eject),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Open SD-card"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("HEllo World"),
      ),
    );
  }
}