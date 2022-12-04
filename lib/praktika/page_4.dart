import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('coffe.png'), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 31),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'Coffe',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w800,
                      fontSize: 23),
                ),
                const Icon(Icons.more_vert, color: Colors.white)
              ],
            ),
            const SizedBox(
              height: 274,
            ),
            const Text(
              'a sweet milk-coffee with topping ginger/sinom/curcuma boba',
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w800,
                  fontSize: 32),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(children: [
                    const Icon(Icons.minimize, color: Colors.black),
                    Text(
                      "3",
                      style: TextStyle(
                          color: const Color(0xffF47500).withOpacity(0.3),
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                    const Icon(Icons.add, color: Colors.black),
                  ]),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 11, horizontal: 42),
                  decoration: BoxDecoration(
                    color: const Color(0xffF47500).withOpacity(0.88),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(children: [
                    const Text(
                      "Add",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                    const Text(
                      "60 k",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 25),
                    ),
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
