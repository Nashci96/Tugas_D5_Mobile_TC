import 'package:flutter/material.dart';
import '../models/chat_models.dart';
import 'package:badges/badges.dart';

class ChatPages extends StatefulWidget{
  const ChatPages({Key? key}) : super(key: key);

  @override
  ChatPagesState createState() {
    return ChatPagesState();
  }
}

class ChatPagesState extends State<ChatPages>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,i) => Column(
        children: <Widget>[
          const Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text(dummyData[i].name[0]),
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  dummyData[i].time,
                  style: const TextStyle(color: Colors.black,fontSize: 14.0),
                ),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].message,
                  style: const TextStyle(color: Colors.black, fontSize: 15.0),
                ),
                Badge(
                  badgeContent: Text('$i'),
                  child: const Icon(Icons.circle_notifications),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}