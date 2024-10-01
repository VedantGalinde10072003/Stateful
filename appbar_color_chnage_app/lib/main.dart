import "package:flutter/material.dart";

void main(){
  runApp(const AppbarColorApp());
}

class AppbarColorApp extends StatefulWidget{
  const AppbarColorApp({super.key});

  @override
  State<AppbarColorApp> createState() => _AppbarColorAppState();
}

class _AppbarColorAppState extends State<AppbarColorApp>{
  bool colorChange=true;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("AppBarColorChangeApp"),
          centerTitle: true,
          backgroundColor:(colorChange)? Colors.blue :Colors.orange
        ),
        body:const Center(
          child:Column(
            children: [
              Text("Change Appbar Color")
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(colorChange){
              colorChange=false;
            }else{
              colorChange=true;
            }
            setState(() {});
          },
          child:const Icon(Icons.add),
        ),
      )
    );
  }
  
}
