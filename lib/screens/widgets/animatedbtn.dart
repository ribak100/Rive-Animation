import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Animatedbtn extends StatelessWidget {
  const Animatedbtn({
    Key? key,
    required RiveAnimationController btnAnimationCtr, required this.press,
  }) : _btnAnimationCtr = btnAnimationCtr, super(key: key);

  final RiveAnimationController _btnAnimationCtr;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          height: 64,
          width: 260,
          child: Stack(
            children: [

              RiveAnimation.asset("assets/RiveAssets/button.riv" ,controllers: [_btnAnimationCtr],),
              Padding(
                padding: const EdgeInsets.only(top: 22, right: 12),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [

                    Icon(Icons.arrow_forward),
                    SizedBox(width: 8,),
                    Text(
                      "Travel To Underworld",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}