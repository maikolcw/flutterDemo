import 'package:flutter/material.dart';

class FlutterPage extends StatefulWidget {
  const FlutterPage({super.key});

  @override
  State<FlutterPage> createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Page"),
        // remove back arrow on title
        automaticallyImplyLeading: false,
        // choose how back arrow look
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Image.asset("images/butterflutter.jpg"),
          // spacing
          const SizedBox(
            height: 8,
          ),
          const Divider(
            color: Colors.black,
          ),
          // a div
          Container(
            margin: const EdgeInsets.all(7.0),
            padding: const EdgeInsets.all(7.0),
            color: Colors.blue,
            // maximum width
            width: double.infinity,
            child: const Center(
              child: Text(
                "This is a Text Widget",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint("You pressed the Elevated Button");
            },
            child: const Text("This is an Elevated Button"),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint("You pressed the Outlined button");
            },
            child: const Text("This is an Outlined Button"),
          ),
          TextButton(
            onPressed: () {
              debugPrint("You pressed the Text button");
            },
            child: const Text("This is an Text Button"),
          ),
          // sample event handler 
          GestureDetector(
            // activates taps anywhere on Row Widget
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint("You click on Widgets in the Row Widget");
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
                Text("This is a Row Widget"),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
