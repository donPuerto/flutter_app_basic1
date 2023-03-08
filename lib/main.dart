import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "click";
  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('App Title')),
        body: Center(
          child: currenIndex == 0 ? Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.orange
                  ),
                  onPressed: () {
                    setState(() {
                      buttonName = "clicked";
                    });
                  },
                  child: Text(buttonName),
                ),
              
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = "clicked";
                    });
                  },
                  child: Text(buttonName),
                ),
              ],
            ),
          ): Image.asset('images/image1.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currenIndex,
          onTap: (int index) {
            setState(() {
              currenIndex = index;
            });
          },
        ),
      ),
    );
  }
}
