import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: const [HomeContent(), ButtonPage()],
      scrollDirection: Axis.vertical,
    ));
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
            0.2,
            0.2
          ],
              colors: [
            Color.fromRGBO(86, 232, 197, 1),
            Color.fromRGBO(47, 190, 216, 1)
          ])),
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: false,
        child: Stack(
          children: [
            const Image(
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/scroll-1.png'),
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  '11°',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Miércoles',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Expanded(child: Container()),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 100,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(26, 186, 214, 1)),
      child: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          style: TextButton.styleFrom(
              minimumSize: Size(60, 10),
              backgroundColor: Color.fromRGBO(0, 153, 249, 1),
              elevation: 4,
              visualDensity: VisualDensity(horizontal: 0.3, vertical: 0.3)),
          child: const Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: Text(
              'Bienvenido',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          onPressed: () {},
        ),
      )),
    );
  }
}
