import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 251, 247),
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color.fromARGB(255, 16, 57, 123),
          title: Text("Barra do app"),
        ),
        body: listObjects()
      ),
      
    );
  }

  ListView listObjects() {
    return ListView(
        children: [
          cardContainer()
        ]
        
      );
  }

  Card cardContainer() {
    return Card(
          color: Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          margin: EdgeInsets.all(16),
          child: Column(children: [
          
          Image.network("https://images.unsplash.com/photo-1682685796002-e05458d61f07?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60", scale: 1.2,),
          Column(
            children: [
              principalContainer(),
            ],
          )
          ],)
        );
  }

  Container principalContainer() {
    return Container(
              padding: EdgeInsets.all(8),
              child:
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Pacote Cancún 2021", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Aéreo + Hotel All Inclusive", style: TextStyle(color: Color.fromARGB(255, 74, 74, 74), fontSize: 14), ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.sunny),
                          Text(" "),
                          Text("5 Diárias")
                        ],
                      ),
                      SizedBox(width: 10,),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.person),
                          Text(" "),
                          Text("1 Pessoa")
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(children: [
                    Text("A partir de ", style: TextStyle(fontSize: 13)),
                    Text("R\$4.444 ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  ],),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text("R\$ 3.749", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                      SizedBox(width: 10,),
                      Text("Taxa Grátis em até 12x", style: TextStyle(color: Color.fromARGB(255, 74, 74, 74), fontSize: 14), )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("Cancelamento Grátis!", style: TextStyle(fontSize: 13, color: Colors.green, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 6,
                  ),
                ],
              )
            );
  }
}