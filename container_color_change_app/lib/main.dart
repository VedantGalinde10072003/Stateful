import "package:flutter/material.dart";

void main(){
  runApp(const ContainerColorApp());
}

class ContainerColorApp extends StatefulWidget{
  const ContainerColorApp({super.key});

  @override
  State<ContainerColorApp> createState() => _ContainerColorApp();
}

class _ContainerColorApp extends State<ContainerColorApp>{
  bool colorChange=true;

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:Text("ContainerColorChangeApp"),
          centerTitle:true,
          backgroundColor:Colors.blue
        ),
        body: Center(
          child:Container(
            height:200,
            width:200,
            color:(colorChange)?Colors.blue:Colors.amber
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
