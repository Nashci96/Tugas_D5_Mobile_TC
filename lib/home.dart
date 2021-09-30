import 'package:flutter/material.dart';
import 'package:flutter_task_d5/pages/call_pages.dart';
import 'package:flutter_task_d5/pages/status_pages.dart';
import 'pages/chat_pages.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState()=>_HomeState();
}

class _HomeState extends State<Home>{

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp Imitation"),
          backgroundColor: Colors.green[200],
          actions: [
            // TextButton.icon(onPressed: (){}, icon: const Icon(Icons.search), label: const Text(''))
            const Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text("profile"),
                  value: 1,),
                const PopupMenuItem(
                  child: Text("settings"),
                  value: 2,),
              ])
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ]),    
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.camera_alt),
            ChatPages(),
            StatusPages(),
            CallPages(),
          ],
        ),
      ));
  }
}

// return Scaffold(
//       appBar: AppBar(
//         title: Text("Whatsapp Imitation"),
//         backgroundColor: Colors.green[200],
//         actions: <Widget>[
//           TextButton.icon(onPressed: (){}, icon: Icon(Icons.search), label: Text('search')),
//         ],
//         bottom: TabBar(
//           controller: ,
//           tabs: tabs),
//       ),

//       body: 
//     );