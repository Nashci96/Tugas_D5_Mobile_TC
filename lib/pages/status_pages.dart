import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/chat_models.dart';

class StatusPages extends StatefulWidget{
  const StatusPages({Key? key}) : super(key: key);

  @override
  ChatPagesState createState() {
    return ChatPagesState();
  }
}

class ChatPagesState extends State<StatusPages>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,i)=> Column(
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
              ],
            ),
            subtitle:Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                dummyData[i].time,
                style: const TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
        ],
      )  
    );
  }
}