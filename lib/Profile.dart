import 'package:flutter/material.dart';
import 'package:flutter_hakkason/widgets/ButtomUI.dart';
import 'package:gap/gap.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Gap(20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100, // 丸の直径
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue, // 丸の色
                  shape: BoxShape.circle, // ← これで「丸」になる
                ),
              ),
            ],
          ),
          Text(
            "Jane",
            style: const TextStyle(
              fontSize: 24, // ← ここで大きさを指定
              fontWeight: FontWeight.bold, // 太字にしたい場合
            ),
          ),
          Text(
            "san francisco",
            style: const TextStyle(
              fontSize: 24, // ← ここで大きさを指定
              fontWeight: FontWeight.bold, // 太字にしたい場合
            ),
          ),
          ButtonUI(
            text: "EDIT",
            backgroundColor: Colors.black,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
