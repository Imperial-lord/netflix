import 'package:flutter/material.dart';

import '../../widgets/ui/app_bar_notifications.dart';

class NewAndHot extends StatefulWidget {
  const NewAndHot({Key? key}) : super(key: key);
  static String id = 'new-and-hot';

  @override
  State<NewAndHot> createState() => _NewAndHotState();
}

class _NewAndHotState extends State<NewAndHot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBarNotifications(context,
          Text('New & Hot', style: Theme.of(context).textTheme.titleLarge)),
    );
  }
}
