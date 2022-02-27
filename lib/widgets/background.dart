import 'dart:math';

import 'package:flutter/material.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            // aplica colores desde un punto a otro
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.8],
            colors: [Color(0xff2E305F), Color(0xff202333)]));
    return Stack(
      // el stack como las columnas siempre intenta ocupar todo el espacio disponible
      children: [
        Container(
          decoration: boxDecoration,
        ),
        _CustomBox(size: size)
      ],
    );
  }
}

class _CustomBox extends StatelessWidget {
  const _CustomBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -220,
      left: -50,
      child: Transform.rotate(
        angle: -pi / 4,
        child: Container(
          height: size.height * 0.6 - 15,
          width: size.width * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              gradient: const LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1)
              ])),
        ),
      ),
    );
  }
}
