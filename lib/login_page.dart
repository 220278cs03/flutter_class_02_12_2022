import 'package:flutter/material.dart';

import 'login_page_data.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController firstName = TextEditingController();

  TextEditingController lastName = TextEditingController();

  List<String> listOfImage = [
    'https://www.w3schools.com/howto/img_avatar2.png',
    'https://www.w3schools.com/w3images/avatar6.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUHK_xd4GHWvzXkA3DygGiU3---JdQdHXbA_uTguFvckcwsMDakFodlYlaQMv4p6fWM5I&usqp=CAU',
    'https://cdn4.iconfinder.com/data/icons/people-avatar-1-2/512/7-512.png'
  ];

  int selectIndexImage = -1;

  bool isNameEmpty = false;
  bool isLastNameEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listOfImage.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: InkWell(
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  border: Border.all(
                                      color: selectIndexImage == index
                                          ? Colors.blue
                                          : Colors.grey),
                                  image: DecorationImage(
                                      image: NetworkImage(listOfImage[index]),
                                      fit: BoxFit.cover)),
                            ),
                            onTap: () {
                              if (selectIndexImage == index) {
                                selectIndexImage = -1;
                              } else {
                                selectIndexImage = index;
                              }
                              setState(() {});
                            },
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  onChanged: (c){
                    isNameEmpty = false;
                    setState(() {
                    });
                  },
                  controller: firstName,
                  decoration: InputDecoration(
                      labelText: "First name",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder()),
                ),
                isNameEmpty
                    ? Text(
                        "You must enter the name",
                        style: TextStyle(color: Colors.red),
                      )
                    : SizedBox.shrink(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: TextFormField(
                    onChanged: (c){
                      isLastNameEmpty = false;
                      setState(() {});
                    },
                    controller: lastName,
                    decoration: InputDecoration(
                        labelText: "Last name",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder()),
                  ),
                ),
                isLastNameEmpty
                    ? Text(
                  "You must enter the last name",
                  style: TextStyle(color: Colors.red),
                )
                    : SizedBox.shrink(),
                ElevatedButton(
                    onPressed: () {
                      if (firstName.text.isNotEmpty && lastName.text.isNotEmpty) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Data(
                                      firstname: firstName.text,
                                      lastname: lastName.text,
                                      image: selectIndexImage == -1
                                          ? ""
                                          : listOfImage[selectIndexImage],
                                    )));
                      } else {
                        isNameEmpty = true;
                        isLastNameEmpty = true;
                        setState(() {});
                      }
                    },
                    child: Text("Continue"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
