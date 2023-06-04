import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_interfaces/pacote_detalhes.dart';

class PacoteTuristico extends StatefulWidget {
  final String imageBackground;
  final String pacoteNome ;
  final String inclusives;
  final int diarias;
  final int pessoas;
  final String precoBase;
  final String precoFinal;
  const PacoteTuristico({super.key, required this.imageBackground, required this.pacoteNome, required this.inclusives, required this.diarias, required this.pessoas, required this.precoBase, required this.precoFinal});

  @override
  State<PacoteTuristico> createState() => _PacoteTuristicoState();
}

class _PacoteTuristicoState extends State<PacoteTuristico> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPackage()));
      },
      child: Hero(
        tag: 'HeroTransition',
        child:
          cardContainer(
          imageBackground: widget.imageBackground, 
          pacoteNome: widget.pacoteNome, 
          inclusives: widget.inclusives, 
          diarias: widget.diarias, 
          pessoas: widget.pessoas, 
          precoBase: widget.precoBase, 
          precoFinal: widget.precoFinal
          ),
      ),
    );
  }
}

Card cardContainer(
    { required String imageBackground,
      required String pacoteNome ,
      required String inclusives,
      required int diarias,
      required int pessoas,
      required String precoBase,
      required String precoFinal,
  }) {
    return Card(
          
          color: const Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          margin: const EdgeInsets.all(16),
          child: Column(children: [
            
            ClipRRect(
              
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network("$imageBackground", scale: 1.2,),
            ),
            
            Column(
              children: [
                buildPrincipalContainer(
                  pacoteNome: pacoteNome,
                  inclusives: inclusives,
                  diarias: diarias,
                  pessoas: pessoas,
                  precoBase: precoBase,
                  precoFinal: precoFinal
                ),
              ],
            )
          ],)
          
        );
  }

  Container buildPrincipalContainer({
    required String pacoteNome ,
    required String inclusives,
    required int diarias,
    required int pessoas,
    required String precoBase,
    required String precoFinal,
  }) {
    return Container(
              padding: const EdgeInsets.all(8),
              child:
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text("$pacoteNome", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("$inclusives", style: TextStyle(color: Color.fromARGB(255, 74, 74, 74), fontSize: 14), ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.sunny),
                          const Text(" "),
                          Text("$diarias")
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.person),
                          const Text(" "),
                          Text("$pessoas")
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(children: [
                    const Text("A partir de ", style: TextStyle(fontSize: 13)),
                    Text("R\$$precoBase ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  ],),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text("R\$ $precoFinal", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                      const SizedBox(width: 10,),
                      const Text("Taxa Grátis em até 12x", style: TextStyle(color: Color.fromARGB(255, 74, 74, 74), fontSize: 14), )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text("Cancelamento Grátis!", style: TextStyle(fontSize: 13, color: Colors.green, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              )
            );
  }