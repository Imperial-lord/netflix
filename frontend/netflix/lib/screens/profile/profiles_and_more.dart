import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screens/ui/welcome.dart';
import 'package:netflix/widgets/profiles_and_more/profile_icon.dart';
import 'package:netflix/widgets/profiles_and_more/profile_options.dart';

class ProfilesAndMore extends StatefulWidget {
  const ProfilesAndMore({Key? key}) : super(key: key);

  static String id = 'profiles-and-more';

  @override
  State<ProfilesAndMore> createState() => _ProfilesAndMoreState();
}

class _ProfilesAndMoreState extends State<ProfilesAndMore> {
  List<IconData> iconList = [
    CupertinoIcons.bell_fill,
    Icons.playlist_add_check,
    CupertinoIcons.gear,
    CupertinoIcons.person,
    CupertinoIcons.question_circle
  ];

  List<String> itemList = [
    'Notifications',
    'My List',
    'App Settings',
    'Account',
    'Help'
  ];

  void signOutHandler() {
    Navigator.pushNamedAndRemoveUntil(
        context, Welcome.id, (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Profiles & More',
                style: Theme.of(context).textTheme.titleLarge)),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      profileIcon(
                          'https://cdna.artstation.com/p/assets/images/images/025/564/312/large/fazeel-zaffar-1.jpg?1586197925',
                          'AB'),
                      profileIcon('https://wallpaperaccess.com/full/323408.jpg',
                          'Tony'),
                      profileIcon(
                          'https://occ-0-2590-2186.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAABVKRigKyd51z_GFfICMK6t7lTZ7CNS2pfccve109FGK7IhzxDd5jAaxtLOgFKHYK-FRWjcWgvI8dDEUV4M8IgxYRyEbOsj0BVViH.png',
                          'Children'),
                    ],
                  ),
                  const SizedBox(height: 50),
                  ...List.generate(
                      itemList.length,
                      (index) =>
                          profileOptions(iconList[index], itemList[index])),
                  const SizedBox(height: 50),
                  TextButton(
                      onPressed: signOutHandler,
                      child: Text('Sign Out',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)))
                ])),
          ),
        ));
  }
}
