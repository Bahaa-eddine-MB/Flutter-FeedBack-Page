import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DoctorDetailCard.dart';
import 'doctors.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<Doctor> doctors = [
    Doctor(name: 'Doc1', spec: 'Radio', img:'img/pic 5.jpg', Clock: '3:20'),
    Doctor(name: 'Doc2', spec: 'heart', img:'img/pic.jpg', Clock: '5:20'),
    Doctor(name: 'Doc3', spec: 'head', img:'img/pic2.jpg', Clock: '1:00'),
    Doctor(name: 'Doc4', spec: 'consultation', img:'img/pic3.jpg', Clock: '3:40'),
    Doctor(name: 'Doc5', spec: 'breathing', img:'img/pic4.jpg', Clock: '2:30'),
    Doctor(name: 'Doc6', spec: 'Radio', img:'img/pic 5.jpg', Clock: '4:10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(18, 50, 18, 18),
          color: Colors.lightBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rendez-vous",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Icon(
                Icons.format_align_center_outlined,
                size: 30,
              )
            ],
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
                child: Column(
          children: doctors.map((p) {
            return DoctorDetailCard(doctor: p);
          }).toList(),
        )))
      ],
    );
  }
}
