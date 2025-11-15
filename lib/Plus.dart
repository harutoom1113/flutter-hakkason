import 'package:flutter/material.dart';
import 'package:flutter_hakkason/widgets/ButtomUI.dart';
import 'package:gap/gap.dart';

class Plus extends StatelessWidget {
  const Plus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
          Container(
            width: 150,
            height: 150,
            color: Colors.black, // 背景：黒
            alignment: Alignment.center, // 中央寄せ
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mon Jun',
                  style: TextStyle(
                    color: Colors.white, // 文字色：白
                    fontSize: 24, // 文字サイズ（お好みで）
                    fontWeight: FontWeight.bold, // 太字（お好みで）
                  ),
                ),
                Text(
                  '23',
                  style: TextStyle(
                    color: Colors.white, // 文字色：白
                    fontSize: 40, // 文字サイズ（お好みで）
                    fontWeight: FontWeight.bold, // 太字（お好みで）
                  ),
                ),
              ],
            ),
          ),
          ButtonUI(
            text: "RUN",
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
          ButtonUI(
            text: "WEIGHT",
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
          Gap(250),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonUI(
                text: "TRAIN",
                backgroundColor: Colors.black,
                textColor: Colors.white,
              ),
            ],
          ),
          Gap(20),
        ],
      ),
    );
  }
}
