import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MenuBox extends StatelessWidget {
  const MenuBox({
    Key? key, required this.press, required this.riveOnInit,
  }) : super(key: key);

  final VoidCallback press;
  final ValueChanged<Artboard> riveOnInit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
          onTap: press,
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(top: 10, left: 7),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 3),
                    blurRadius: 8,
                  )
                ]),
            child: RiveAnimation.asset(
              "assets/RiveAssets/menu_button.riv",
              onInit: riveOnInit,
            ),
          ),
        ));
  }
}