import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart';

import '../Utilities/rive_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SMITrigger trigger;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Explore",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 40),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 260,
                        width: 240,
                        margin: EdgeInsets.only(left: 0, right: 15),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 10, right: 27),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 150,
                                      child: Text(
                                        "The hidden world of Ice",
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )),
                                  SvgPicture.asset(
                                    "assets/icons/ios.svg",
                                    height: 50,
                                    width: 50,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                "This is a mistery world of Ice, it contains diffrent kind of things to explore, but don't go there hot",
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 200,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/avaters/Avatar 1.jpg"))),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/avaters/Avatar 2.jpg"))),
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/avaters/Avatar 3.jpg"))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 260,
                        width: 240,
                        margin: EdgeInsets.only(left: 5, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 10, right: 27),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 150,
                                      child: Text(
                                        "The hidden world of Kise",
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )),
                                  SvgPicture.asset(
                                    "assets/icons/email.svg",
                                    height: 50,
                                    width: 50,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                "Do not enter unless you're a Kise, else you might come out alive NOT! hahahahaha",
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 200,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/avaters/Avatar 6.jpg"))),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/avaters/Avatar 4.jpg"))),
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/avaters/Avatar 1.jpg"))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 260,
                        width: 240,
                        margin: EdgeInsets.only(left: 5, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 10, right: 27),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 150,
                                      child: Text(
                                        "The hidden world of Fire",
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )),
                                  SvgPicture.asset(
                                    "assets/icons/code.svg",
                                    height: 50,
                                    width: 50,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                "This is a mistery world of Fire, it contains diffrent kind of things to explore, but don't go there hold",
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 200,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/avaters/Avatar 3.jpg"))),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/avaters/Avatar 4.jpg"))),
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/avaters/Avatar 5.jpg"))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Recent",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      margin: EdgeInsets.only(top: 20, right: 15),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              children: const [
                                Text(
                                  "Hiden world of Joy",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Enter and experience 🤐",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white70),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 52,
                          ),
                          SizedBox(
                              height: 40,
                              child: VerticalDivider(
                                color: Colors.white70,
                              )),
                          SvgPicture.asset("assets/icons/ios.svg")
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      margin: EdgeInsets.only(top: 20, right: 15),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              children: const [
                                Text(
                                  "Hiden world of Pain",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Enter and experience 😂",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white70),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 44,
                          ),
                          SizedBox(
                              height: 40,
                              child: VerticalDivider(
                                color: Colors.white70,
                              )),
                          SvgPicture.asset("assets/icons/ios.svg")
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      margin: EdgeInsets.only(top: 20, right: 15),
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              children: const [
                                Text(
                                  "Hiden world of Rain",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Enter and experience 💦🤽‍♀️",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white70),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 44,
                          ),
                          SizedBox(
                              height: 40,
                              child: VerticalDivider(
                                color: Colors.white70,
                              )),
                          SvgPicture.asset("assets/icons/ios.svg")
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      margin: EdgeInsets.only(top: 20, right: 15),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              children: const [
                                Text(
                                  "Hiden world of Joy",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Enter and experience 🤐",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white70),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 52,
                          ),
                          SizedBox(
                              height: 40,
                              child: VerticalDivider(
                                color: Colors.white70,
                              )),
                          SvgPicture.asset("assets/icons/ios.svg")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    GestureDetector(
                      onTap: (){
                        trigger.fire();
                      },
                      child: SizedBox(
                          height: 400,
                          width: double.infinity,
                          child: RiveAnimation.asset(
                            "assets/RiveAssets/rocket.riv",
                            onInit: (artBoard) {
                              StateMachineController controller =
                              RiveUtils.getRiverController(artBoard,
                                  StateMachineName: "State Machine");
                              trigger = controller.findSMI("Trigger 1") as SMITrigger;
                            }

                          )),
                    ),
                    SizedBox(
                      height: 300,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
