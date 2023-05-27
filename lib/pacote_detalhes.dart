
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailsPackage extends StatefulWidget {
  final String image;
  final String pacoteNome;
  final String inclusive;
  final int diarias;
  final String dataInicio;
  final String dataFim;
  final int desconto;
  final String precoBase;
  final String precoMenor;  
  const DetailsPackage({super.key, required this.pacoteNome, required this.inclusive, required this.diarias, required this.dataInicio, required this.dataFim, required this.desconto, required this.precoBase, required this.precoMenor, required this.image});
  @override
  State<DetailsPackage> createState() => _DetailsPackageState();
  
}



class _DetailsPackageState extends State<DetailsPackage> {
  
  @override
  Widget build(BuildContext context) {
    SafeArea BuildPage(
  {
    required BuildContext context,
    required String image,
    required String pacoteNome,
    required String inclusive,
    required int diarias,
    required String dataInicio,
    required String dataFim,
    required int desconto,
    required String precoBase,
    required String precoMenor,
  }
  
) {
    bool liked = false;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(225, 246, 251, 247),
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
                    IconButton(onPressed: () {
                      setState(() {
                        liked = !liked;
                      });
                    }, 
                    
                    // ignore: dead_code
                    icon: Icon(liked? Icons.favorite : Icons.favorite_border_outlined, color: liked? Color.fromARGB(255, 244, 54, 111) : Colors.white, size: 18)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share, color: Colors.white, size: 18,)),
                  ],)
              ]),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
              Image.network("$image"),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("CANCÚN, MEX", style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 75, 75, 75)
                      ),
                    ),
                    SizedBox(height: 14,),
                    Text("$pacoteNome", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      
                    )),
                    SizedBox(height: 14,),
                    Text("$inclusive", style: TextStyle(
                      fontSize: 10,
                      color: Color.fromARGB(255, 75, 75, 75),  
                    )),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                              Icon(Icons.sunny),
                              Text(" $diarias diárias", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                              SizedBox(height: 10)
                            ],),
                            SizedBox(height: 10),
                            Text("Válido para o período de:", style: TextStyle(fontSize: 10)),
                            SizedBox(height: 6),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text("De ", style: TextStyle(fontSize: 18)),
                                  Text("$dataInicio ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                  
                                ],),
                                Row(
                                    children: [
                                      Text("a ", style: TextStyle(fontSize: 18)),
                                      Text("$dataFim", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                    ],
                                  )
                              ],
                            )
                            
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Color.fromARGB(255, 253, 110, 0)),
                                padding: EdgeInsets.all(5),
                                child: Text("$desconto%", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, letterSpacing: 1.2))
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text("A partir de ", style: TextStyle(fontSize: 10)),
                                  Text("R\$ $precoBase ", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(height: 6),
                              Text("R\$ $precoMenor", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 253, 110, 0))),
                              SizedBox(height: 16),
                              Text("Taxa Grátis | Em até 12x", style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 156, 156, 156))),
          
                            ],
                          ),
                        ),
                            
                      ],
                    ),
                    SizedBox(height: 16,),
                    Divider(height: 1, color: Color.fromARGB(255, 167, 167, 167),),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("O que está incluso", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.check, color: Colors.green, size: 16),
                                    Text(" Cancelamento", style: TextStyle(color: Colors.green, fontSize: 12)),
                                  ],
                                ),
                                Text("Grátis!", style: TextStyle(color: Colors.green, fontSize: 12)),
                              ],
                            ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Icon(Icons.check),
                            SizedBox(height: 10),
                            Text("Apartamento", style: TextStyle(color: const Color.fromARGB(255, 114, 113, 113), fontSize: 12))
                          ],),
                          Column(children: [
                            Icon(Icons.money),
                            SizedBox(height: 10),
                            Text("All inclusive", style: TextStyle(color: const Color.fromARGB(255, 114, 113, 113), fontSize: 12))
                          ],),
                          Column(children: [
                            Icon(Icons.airplanemode_active),
                            SizedBox(height: 10),
                            Text("Passagem \n Aérea", style: TextStyle(color: const Color.fromARGB(255, 114, 113, 113), fontSize: 12))
                          ],)
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Divider(height: 1, color: Color.fromARGB(255, 167, 167, 167),),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Oferta especial", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        InkWell(
                          child: Text("Mais Saídas", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 232, 31, 125))),
                          onTap: () {}
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        backgroundColor: Color.fromARGB(255, 232, 31, 125)
                      ),
                      onPressed: (){}, 
                      child: Text("Escolher opção", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                    SizedBox(height: 16),
          
                  ]
                ),
              )
            ]),
          ),
        ),
      );
  }
    return BuildPage(context: context, dataFim: widget.dataFim, dataInicio: widget.dataInicio, image: widget.image, pacoteNome: widget.pacoteNome,  inclusive: widget.inclusive, diarias: widget.diarias, precoBase: widget.precoBase, precoMenor: widget.precoMenor, desconto: widget.desconto);
    
  }
}