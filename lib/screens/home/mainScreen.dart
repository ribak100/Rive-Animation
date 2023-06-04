import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:riveappdev/screens/home/home_screen.dart';
import 'package:riveappdev/screens/widgets/animated_bar.dart';
import 'package:riveappdev/screens/widgets/side_bar.dart';

import '../Utilities/rive_assets.dart';
import '../Utilities/rive_utils.dart';
import '../widgets/expore_item.dart';
import '../widgets/menuBox.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  RiveAssets selectedBottomNav = bottomNav.first;
  double size = 20.0;
  late SMIBool isSideBarClosed;
  bool isSideMenuCLosed = true;

  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;



  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200))
          ..addListener(() {
            setState(() {});
          });
    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));

    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17203A),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            left: isSideMenuCLosed ? -288 : 0,
            duration: Duration(milliseconds: 200),
            width: 288,
            height: MediaQuery.of(context).size.height,
            child: SIdeMenu(),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(animation.value - 30 * animation.value * pi / 180),
            child: Transform.translate(
                offset: Offset(animation.value * 265, 0),
                child: Transform.scale(
                    scale: scaleAnimation.value,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: const HomeScreen()))),
          ),
          AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            left: isSideMenuCLosed ? 0 : 220,
            top: isSideMenuCLosed ? 0 : 24,
            duration: Duration(milliseconds: 200),
            child: MenuBox(
              press: () {
                isSideBarClosed.value = !isSideBarClosed.value;
                if (isSideMenuCLosed) {
                  _animationController.forward();
                } else {
                  _animationController.reverse();
                }

                setState(() {
                  isSideMenuCLosed = isSideBarClosed.value;
                });
              },
              riveOnInit: (artBoard) {
                StateMachineController controller = RiveUtils.getRiverController(
                    artBoard,
                    StateMachineName: "State Machine");
                isSideBarClosed = controller.findSMI("isOpen") as SMIBool;
                isSideBarClosed.value = true;
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0, 100 *animation.value),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            decoration: BoxDecoration(
                color: const Color(0xFF102734).withOpacity(0.9),
                borderRadius: const BorderRadius.all(Radius.circular(24))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...List.generate(
                  bottomNav.length,
                  (index) => GestureDetector(
                    onTap: () {
                      bottomNav[index].input!.change(true);
                      if (bottomNav[index] != selectedBottomNav) {
                        setState(() {
                          selectedBottomNav = bottomNav[index];
                        });
                      }
                      print(index);

                      Future.delayed(const Duration(seconds: 1), () {
                        bottomNav[index].input!.change(false);
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedBar(
                          isActive: bottomNav[index] == selectedBottomNav,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        SizedBox(
                            height: 36,
                            width: 36,
                            child: Opacity(
                              opacity:
                                  bottomNav[index] == selectedBottomNav ? 1 : 0.5,
                              child: RiveAnimation.asset(
                                bottomNav.first.src,
                                artboard: bottomNav[index].artBoard,
                                onInit: (artBoard) {
                                  StateMachineController controller =
                                      RiveUtils.getRiverController(artBoard,
                                          StateMachineName:
                                              bottomNav[index].stateMachineName);
                                  bottomNav[index].input =
                                      controller.findSMI("active") as SMIBool;
                                },
                              ),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
