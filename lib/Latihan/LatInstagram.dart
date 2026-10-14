import 'package:flutter/gestures.dart'; // Jangan lupa import ini untuk mendeteksi mouse/trackpad
import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram')),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 110,
              child: ScrollConfiguration(
                behavior: const MaterialScrollBehavior().copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.trackpad,
                  },
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: [
                    story('Story 1', ''),
                    story('Story 2', ''),
                    story('Story 3', ''),
                    story('Story 4', ''),
                    story('Story 5', ''),
                    story('Story 6', ''),
                    story('Story 7', ''),
                    story('Story 8', ''),
                    story('Story 9', ''),
                    story('Story 10', ''),
                  ],
                ),
              ),
            ),

            const Divider(height: 1),

            Expanded(
              child: ListView(
                children: [
                  post(
                    'thv',
                    'https://picsum.photos/id/10/200',
                    'https://picsum.photos/id/1018/600/700',
                  ),
                  post(
                    'annamoroll17',
                    'https://picsum.photos/id/20/200',
                    'https://picsum.photos/id/1015/600/700',
                  ),
                  post(
                    'by.gaeun',
                    'https://picsum.photos/id/30/200',
                    'https://picsum.photos/id/1019/600/700',
                  ),
                  post(
                    'goyounjungfp',
                    'https://picsum.photos/id/40/200',
                    'https://picsum.photos/id/1016/600/700',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget story(String name, String image) {
    return SizedBox(
      width: 85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.pink,
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(image),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget post(String username, String profile, String photo) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(profile),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Bandung, Indonesia',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),

          Image.network(
            photo,
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
          ),

          const Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Icon(Icons.favorite_border, size: 27),
                SizedBox(width: 18),
                Icon(Icons.mode_comment_outlined, size: 27),
                SizedBox(width: 18),
                Icon(Icons.send_outlined, size: 27),
                Spacer(),
                Icon(Icons.bookmark_border, size: 27),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              bottom: 12,
            ),
            child: Text(
              'Lihat semua komentar',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}