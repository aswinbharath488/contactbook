import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  List image = [
    "assets/person1.png",
    "assets/person2.png",
    "assets/person3.png",
    "assets/person4.png",
    "assets/person5.png",
  ];
  List name = ["Aswin", "Shinadh", "Amal", "Nadeem", "Subin"];
  List number = [
    "3423534314",
    "3423534314",
    "3423534314",
    "3423534314",
    "3423534314"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyListView'),
      ),
      body: ListView.builder(
          itemCount: image.length,
          itemBuilder: (context, index) {
            return Card(
                child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(image[index]),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name[index],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        number[index],
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ));
          }),
    );
  }
}
