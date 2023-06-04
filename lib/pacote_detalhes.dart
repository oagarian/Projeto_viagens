
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailsPackage extends StatefulWidget {
  const DetailsPackage({super.key});
  @override
  State<DetailsPackage> createState() => _DetailsPackageState();
  
}

SafeArea BuildPage(BuildContext context) {
    return SafeArea(
        child: Hero(
          tag: 'HeroTransition',
          child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 18),  
                  ),
                  Wrap(children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined, color: Colors.white, size: 18)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share, color: Colors.white, size: 18,)),
                  ],)
              ]),
            ),
          ),
          body: Column(
            children: [
            Image.network("https://images.unsplash.com/photo-1682685796002-e05458d61f07?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60"),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CANCÚN, MEX", style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 75, 75, 75)
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Pacote Cancún - Segundo Semestre 2021", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    
                  )),
                  SizedBox(height: 5,),
                  Text("Aéreo + Hotel com All Inclusive", style: TextStyle(
                    fontSize: 10,
                    color: Color.fromARGB(255, 75, 75, 75),  
                  )),
                  SizedBox(height: 5,),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                    Icon(Icons.sunny),
                    Text(" 5 ou 7 diárias", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
                  ],),
                  
                  
                ]
              ),
            )
          ]),
        ),
        ),
      );
  }

class _DetailsPackageState extends State<DetailsPackage> {
  @override
  Widget build(BuildContext context) {
    return BuildPage(context);
  }
}