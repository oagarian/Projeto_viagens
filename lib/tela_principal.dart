import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_interfaces/pacote_turistico.dart';

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
        backgroundColor: const Color.fromARGB(255, 246, 251, 247),
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: const Color.fromARGB(255, 16, 57, 123),
          title: const Text("Pesquisar"),
        ),
        body: listObjects()
      ),
      
    );
  }

  ListView listObjects() {
    return ListView(
        children: [
          firstNavigator(),
          destiny(),
          PacoteTuristico(
            imageBackground: "https://images.unsplash.com/photo-1682685796002-e05458d61f07?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60",
            pacoteNome: "Pacote Cancún 2021",
            inclusives: "Aéreo + Hotel All Inclusive",
            diarias: 5,
            pessoas: 1,
            precoBase: "4.444",
            precoFinal: "3.749",
            dataFim: "30 nov. 21",
            dataInicio: "01 ago. 21",
            desconto: 45,
            ),
          fixedBar()
        ]
        
      );
  }
  Container firstNavigator() {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        color: const Color.fromARGB(255, 16, 57, 123),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.hotel), color: const Color.fromARGB(255, 197, 200, 249), iconSize: 30,),
                    const Text("HOTÉIS", style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 197, 200, 249))),

                  ],
                ),

                Column(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.card_travel_outlined), color: const Color.fromARGB(255, 197, 200, 249), iconSize: 30),
                    const Text("PACOTES", style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 197, 200, 249)))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const SizedBox(
              height: 45,
              child: TextField(
              decoration: InputDecoration(
                labelText: "Pesquise um destino ou hotel",
                prefixIcon: Icon(Icons.search),
                fillColor: Colors.white,
                filled: true,
              ),
            ),),
            
            
            
          ],
        )
      );
  }
  Container fixedBar() {
    return Container(
      height: 57,
      width: double.maxFinite,
      color: const Color.fromARGB(255, 247, 245, 245),

      child: 
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.explore_outlined), color: const Color.fromARGB(255, 232, 31, 125)),
                const Text("DESTAQUES", style: TextStyle(fontSize: 7, color: Color.fromARGB(255, 232, 31, 125)))

              ],
            ),
            Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.card_travel_outlined)),
                const Text("PACOTES", style: TextStyle(fontSize: 7))
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.people_alt_outlined)),
                const Text("PERFIL", style: TextStyle(fontSize: 7))
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                const Text("MAIS", style: TextStyle(fontSize: 7))
              ],
            )
          ],
        )
    );
  }
  Card destiny() {
    return Card(
      
      clipBehavior: Clip.antiAlias,
      color: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),

      margin: const EdgeInsets.all(16),

      child: Row(children: [
        const SizedBox(width: 25,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(height:20),
          const Text("Top destinos \nmais buscados", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20, )),
          const SizedBox(height:5),
          const Text("Corre que tá rolando \nmuita promoção!!", style: TextStyle(color: Colors.white, fontSize: 14)),
          const SizedBox(height:5),
          ElevatedButton(onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,

            ),
            
            child: 
              const Text("EU QUERO!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))
          ),
          const SizedBox(height:20),
        ],),
        const SizedBox(width: 10),

        Expanded( child: Container(
          //clipBehavior: Clip.none,
          transformAlignment: Alignment.center,
          transform: Matrix4.rotationZ(-0.7 /4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.network("https://images.unsplash.com/photo-1683475962496-220b83c850a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80", height: 170,),
            ],
        
          ),
        ))
      ],)
    );
  }

  
}