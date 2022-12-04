import 'package:flutter/material.dart';

import 'page_3.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff233F3A),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                child: const Text(
                  'Menu',
                  style: TextStyle(
                      color: Color(0xffF47500),
                      fontWeight: FontWeight.w700,
                      fontSize: 32),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const PageThree()));
                },
              ),
              Container(
                height: 5,
                width: 48,
                margin: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(2)),
                    color: const Color(0xffFFFFFF).withOpacity(0.2)),
              ),
              const Text(
                'Bobals Benefits',
                style: TextStyle(
                    color: Color(0xffF47500),
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
              Container(
                height: 5,
                width: 48,
                margin: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(2)),
                    color: const Color(0xffFFFFFF).withOpacity(0.2)),
              ),
              const Text(
                'Order History',
                style: TextStyle(
                    color: Color(0xffF47500),
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
              Container(
                height: 5,
                width: 48,
                margin: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(2)),
                    color: const Color(0xffFFFFFF).withOpacity(0.2)),
              ),
              const Text(
                'Social Media',
                style: TextStyle(
                    color: Color(0xffF47500),
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
