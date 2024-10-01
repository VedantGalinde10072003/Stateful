import "package:flutter/material.dart";

void main(){
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp>{
  int _counter=0;

  List<String> playerList =   [ "https://upload.wikimedia.org/wikipedia/commons/d/d5/MS_Dhoni_%28Prabhav_%2723_-_RiGI_2023%29.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRLmNNiZvSUqPhMbeXXE1Ekf38PBU0RvWHQw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5IMvU5mzUNUAVtUPVexkzgt3cDPUE6113Q&s",
  ];


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("PlayerApp"),
          centerTitle: true,
          backgroundColor:Colors.blue
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                playerList[_counter],
                height: 300,
              )
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(_counter < playerList.length-1){
              _counter++;
            }else{
              _counter=0;
            }
            setState(() {});
          },
          tooltip:'Increment',
          child:const Icon(Icons.add)
        ),

      )
    );
  }

}