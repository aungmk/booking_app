import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(17, 17, 17, 1.0),
        title: Text("Yangon",
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 16,
        fontStyle: FontStyle.italic
        ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(
            left:37,
          ),
          child: Image.asset("assets/images/Vector.jpg"
          ),
        ),
        actions: [
          Icon(Icons.search,
            size: 22,
            color: Colors.white),
          SizedBox(width: 20),

          Icon(Icons.add_alert_sharp,
          size: 18,
          color: Colors.white),
          
          Image.asset("assets/images/Vector.jpg")
        ],
        ),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
      );
  }
}
