import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  final users = List.generate(
    10,
    (index) => {
      'name': 'User $index',
      'imageUrl': 'https://via.placeholder.com/150', // 仮の画像URL
    },
  );

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100, // 高さを決めてあげる（丸アイコン + 名前）
              child: ListView.separated(
                scrollDirection: Axis.horizontal, // ← 横スクロール
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: users.length,
                separatorBuilder: (context, index) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  final user = users[index];

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 丸いプロフィール画像部分
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [Colors.red, Colors.orange],
                          ), // インスタっぽい枠グラデ
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3), // 枠の太さ
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(user['imageUrl']!),
                            backgroundColor: Colors.grey[300],
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      // ユーザー名
                      SizedBox(
                        width: 70,
                        child: Text(
                          user['name']!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            HeatMapCalendar(
              flexible: true,
              colorsets: const {
                1: Colors.greenAccent,
                3: Colors.green,
                5: Colors.greenAccent,
              },
            ),
          ],
        ),
      ),
    );
  }
}
