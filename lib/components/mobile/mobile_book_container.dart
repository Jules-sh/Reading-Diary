library mobile_components;

import 'package:flutter/material.dart';

class MobileBookContainer extends StatelessWidget {
  const MobileBookContainer({
    required this.title,
    required this.content,
    Key? key,
  }) : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    final mqs = MediaQuery.of(context).size;
    final size = Size(mqs.width, mqs.height);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 8,
      ),
      child: SizedBox(
        width: size.width / 1.2,
        child: DecoratedBox(
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.src,
            gradient: const LinearGradient(
              colors: [
                Colors.blue,
                Colors.purple,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              stops: [0.1, 1.2],
              tileMode: TileMode.mirror,
              transform: GradientRotation(20),
            ),
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
          ),
          position: DecorationPosition.background,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 25,
                bottom: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                textBaseline: TextBaseline.alphabetic,
                textDirection: TextDirection.ltr,
                verticalDirection: VerticalDirection.up,
                children: <Widget>[
                  Text(content, style: _ctStyle),
                  Text(title, style: _tStyle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextStyle get _tStyle {
    return TextStyle(
      fontSize: 30,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get _ctStyle {
    return TextStyle(
      fontSize: 17,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w400,
    );
  }
}
