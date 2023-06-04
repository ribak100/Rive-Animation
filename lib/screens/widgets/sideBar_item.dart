import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


class SideBarItem {
  SideBarItem({
    Key? key, required this.artBoard, required this.asset, required this.title, required this.stateMachineName, this.input,
  });

  final String artBoard, asset, title, stateMachineName;
  late SMIBool? input;


  set setInput(SMIBool status) {
    input != status;
  }
}


List<SideBarItem> browse = [
  SideBarItem(asset: "assets/RiveAssets/icons.riv",
      artBoard: "HOME", stateMachineName: "HOME_interactivity", title: "Home"),
  SideBarItem(asset: "assets/RiveAssets/icons.riv",
      artBoard: "SEARCH",
      stateMachineName: "SEARCH_Interactivity",
      title: "Search"),
  SideBarItem(asset: "assets/RiveAssets/icons.riv",
      artBoard: "LIKE/STAR",
      stateMachineName: "STAR_Interactivity",
      title: "Favourite"),
  SideBarItem(asset: "assets/RiveAssets/icons.riv",
      artBoard: "CHAT",
      stateMachineName: "CHAT_Interactivity",
      title: "Help"),
  SideBarItem(asset: "assets/RiveAssets/icons.riv",
      artBoard: "TIMER",
      stateMachineName: "TIMER_Interactivity",
      title: "History"),
  SideBarItem(asset: "assets/RiveAssets/icons.riv",
      artBoard: "BELL",
      stateMachineName: "BELL_Interactivity",
      title: "Notification"),

];
