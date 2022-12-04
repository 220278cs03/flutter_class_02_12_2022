import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  String firstname;
  String lastname;
  String image;

  Data(
      {Key? key,
      required this.firstname,
      required this.lastname,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                border: Border.all(color: Colors.black),
              ),
              child: image.isNotEmpty
                  ? Image.network(image)
                  : Icon(
                      Icons.person,
                      size: 50,
                    ),
            ),
            SizedBox(
              height: 32,
            ),
            Text('First Name: $firstname'),
            SizedBox(
              height: 32,
            ),
            Text('Last Name: $lastname'),
          ],
        ),
      ),
    );
  }
}
