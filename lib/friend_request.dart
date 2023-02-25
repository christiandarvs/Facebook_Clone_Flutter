import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendRequest extends StatelessWidget {
  const FriendRequest({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgURL = [
      'https://images.pexels.com/photos/3170635/pexels-photo-3170635.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/5220075/pexels-photo-5220075.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/1181690/pexels-photo-1181690.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/1090387/pexels-photo-1090387.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/5455609/pexels-photo-5455609.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/15568433/pexels-photo-15568433.jpeg?auto=compress&cs=tinysrgb&w=600'
    ];
    List<String> accountNames = [
      'Joseph Hernandez',
      'Terry Cooper',
      'Mary Lopez',
      'Pamela Morrison',
      'Austin Ford',
      'Matthew Smith',
      'Kelly Perkins',
      'John Thomas',
      'Benjamin Evans'
    ];
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Friends',
                style: GoogleFonts.titilliumWeb(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              IconButton(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff393a3c),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Text('Suggestions'),
              ),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff393a3c),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Text('Your Friends'),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Friend requests',
                    style: GoogleFonts.titilliumWeb(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '85',
                    style: GoogleFonts.titilliumWeb(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 22),
                  ),
                ],
              ),
              TextButton(
                onPressed: (() {}),
                child: const Text(
                  'See all',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
            itemCount: 8,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return ListTile(
                contentPadding: const EdgeInsets.all(10),
                title: Text(
                  accountNames[index],
                  style: const TextStyle(color: Colors.white),
                ),
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(imgURL[index]),
                ),
                subtitle: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          onPressed: (() {}), child: const Text('Confirm')),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff393a3c)),
                        child: const Text('Delete'),
                      ),
                    )
                  ],
                ),
              );
            }))
      ],
    );
  }
}
