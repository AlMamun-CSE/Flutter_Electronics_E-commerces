import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/assets/asset.dart';

class CustomAnimation extends StatefulWidget {
  final Widget home;

  const CustomAnimation({Key? key, required this.home}) : super(key: key);

  @override
  _CustomAnimationState createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation> {
  double xOffset = 0.0;
  double yOffset = 0.0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrawerOpen ? 30 : 0.0),
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: isDrawerOpen
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      xOffset = 0;
                      yOffset = 0;
                      scaleFactor = 1;
                      isDrawerOpen = false;
                    });
                  },
                  icon: Icon(Icons.arrow_back_ios),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      xOffset = 230;
                      yOffset = 200;
                      scaleFactor = 0.6;
                      isDrawerOpen = true;
                    });
                  },
                  icon: kMenuIcon,
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
                actions: [
                  kNotifecationIcon,
                ],
        ),
        body: widget.home,

      ),
    );
  }
}
