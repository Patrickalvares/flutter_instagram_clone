import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/utils/colors.dart';
import 'package:flutter_instagram_clone/widgets/follow_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text('username'),
        centerTitle: false,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcTIGd4cubjxq_3-rPHhoOzO8ZCxU1DGssorn3rLmdAs6cQuvpFxsdRWgjCpQQFf2KOwIoKu5hKBLCs91EUM1BU'),
                    radius: 40,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildStateColumn(20, 'Postagens'),
                            buildStateColumn(10, 'Seguidores'),
                            buildStateColumn(20, 'Seguindo'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FollowButton(
                                function: () {},
                                backgroundColor: mobileBackgroundColor,
                                borderColor: Colors.grey,
                                text: 'Edit Profile',
                                textColor: primaryColor)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'username',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(top: 1),
                child: Text(
                  'alguma descrição',
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ]),
    );
  }

  Column buildStateColumn(int num, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          num.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4),
          child: Text(
            label,
            style: const TextStyle(
                fontSize: 22, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
