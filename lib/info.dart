import 'package:flutter_profile_ui/models/card_info.dart';
import 'package:flutter_profile_ui/models/message_info.dart';
import 'package:line_icons/line_icons.dart';

List<CardInfo> cardData = [
  CardInfo(
    id: 1,
    icon: LineIcons.biking,
    stat: "21",
    unit: 'km',
    text: "Cycling through the park",
  ),
  CardInfo(
    id: 2,
    icon: LineIcons.bookOpen,
    stat: "03",
    unit: 'h',
    text: "Study for exams",
  ),
  CardInfo(
    id: 3,
    icon: LineIcons.checkCircle,
    stat: "30",
    unit: 'min',
    text: "Complete important tasks",
  ),
  CardInfo(
    id: 4,
    icon: LineIcons.users,
    stat: "01",
    unit: 'h',
    text: "Time with my family",
  ),
];

List<String> periods = ["Daily", "Weekly", "Monthly", "Yearly"];

List<Map<String, dynamic>> navItems = [
  {
    "icon": LineIcons.calendarCheck,
    "text": "Schedule",
  },
  {
    "icon": LineIcons.envelope,
    "text": "Messages",
  },
  {
    "icon": LineIcons.barChart,
    "text": "Statistics",
  },
  {
    "icon": LineIcons.user,
    "text": "Profile",
  },
];

//Chart data
List<Map<String, int>> chartData = [
  {
    "x": 0,
    "y1": 30,
    "y2": 20,
  },
  {
    "x": 1,
    "y1": 35,
    "y2": 25,
  },
  {
    "x": 2,
    "y1": 32,
    "y2": 28,
  },
  {
    "x": 3,
    "y1": 17,
    "y2": 19,
  },
  {
    "x": 4,
    "y1": 28,
    "y2": 22,
  },
  {
    "x": 5,
    "y1": 25,
    "y2": 10,
  },
  {
    "x": 6,
    "y1": 12,
    "y2": 8,
  },
];

List<MessageInfo> messages = [
  MessageInfo(
      id: 1,
      senderName: "Tudor Garrold",
      image: "https://randomuser.me/api/portraits/men/63.jpg",
      topic: "Kanlam",
      message:
          "Restriction of Left Anterior Tibial Artery with Extraluminal Device, Percutaneous Endoscopic Approach"),
  MessageInfo(
      id: 2,
      senderName: "Isadore Deekes",
      image: "https://randomuser.me/api/portraits/women/63.jpg",
      topic: "Regrant",
      message:
          "Bypass Right Brachial Vein to Upper Vein with Autologous Venous Tissue, Percutaneous Endoscopic Approach"),
  MessageInfo(
      id: 3,
      senderName: "Fee Hordell",
      image: "https://randomuser.me/api/portraits/women/25.jpg",
      topic: "Toughjoyfax",
      message:
          "Removal of Internal Fixation Device from Skull, Percutaneous Endoscopic Approach"),
  MessageInfo(
      id: 4,
      senderName: "Maury Conklin",
      image: "https://randomuser.me/api/portraits/men/25.jpg",
      topic: "Greenlam",
      message:
          "Bypass Inferior Vena Cava to Inferior Mesenteric Vein with Autologous Tissue Substitute, Percutaneous Endoscopic Approach"),
  MessageInfo(
      id: 5,
      senderName: "Martha Caddick",
      image: "https://randomuser.me/api/portraits/women/80.jpg",
      topic: "Flexidy",
      message:
          "Extirpation of Matter from Right Axillary Artery, Bifurcation, Open Approach"),
  MessageInfo(
      id: 6,
      senderName: "Denney Holdall",
      image: "https://randomuser.me/api/portraits/men/10.jpg",
      topic: "Latlux",
      message:
          "Drainage of Anterior Neck Subcutaneous Tissue and Fascia, Percutaneous Approach"),
  MessageInfo(
      id: 7,
      senderName: "Sullivan Holywell",
      image: "https://randomuser.me/api/portraits/men/23.jpg",
      topic: "Andalax",
      message:
          "Dilation of Right Brachial Artery, Bifurcation, with Four or More Intraluminal Devices, Percutaneous Approach"),
  MessageInfo(
      id: 8,
      senderName: "Kale Wennington",
      image: "https://randomuser.me/api/portraits/men/50.jpg",
      topic: "Holdlamis",
      message: "Excision of Oculomotor Nerve, Open Approach"),
  MessageInfo(
      id: 9,
      senderName: "Yuma Steenson",
      image: "https://randomuser.me/api/portraits/women/15.jpg",
      topic: "Lotstring",
      message:
          "Replacement of Splenic Artery with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach"),
  MessageInfo(
      id: 10,
      senderName: "Marice Benbrick",
      image: "https://randomuser.me/api/portraits/men/17.jpg",
      topic: "Gembucket",
      message:
          "Alteration of Upper Jaw with Synthetic Substitute, Percutaneous Approach")
];
