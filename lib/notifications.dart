import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notifications',
              style: GoogleFonts.titilliumWeb(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: (() {}),
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ),
      ),
      ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 8,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 40,
                child: Stack(
                  children: const [
                    Positioned(
                      left: 40,
                      top: 26,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white,
                  )),
              title: const Text(
                'Shane shared Yuri Dela Rama\'s Post',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                '15 hours ago',
                style: TextStyle(color: Colors.grey),
              ),
            );
          }))
    ]);
  }
}
