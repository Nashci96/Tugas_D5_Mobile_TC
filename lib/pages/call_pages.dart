import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/chat_models.dart';

class CallPages extends StatefulWidget{
  const CallPages({Key? key}) : super(key: key);

  @override
  CallPagesState createState() {
    return CallPagesState();
  }

}

class CallPagesState extends State<CallPages>{
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
                const Icon(Icons.call_end),
              ],
            ),
            subtitle: Container(
              padding:const EdgeInsets.only(top: 5.0) ,
              child: Text(
                dummyData[i].time,
                style: const TextStyle(color: Colors.blueAccent),
              ),
            ),
          )
        ],
      )
    );
  }
}