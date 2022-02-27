import 'dart:ui';

import 'package:flutter/material.dart';

class Hostel extends StatefulWidget {
  const Hostel({Key? key}) : super(key: key);

  @override
  _HostelState createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  final Color cor1 = const Color(0xFF91103B);
  final Color cor2 = const Color(0xFFD65454);
  final Color cor3 = const Color(0xFFE7DEE0);
  final Color cor4 = const Color(0xFFF9F9F9);
  List selecionados = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "ErBienBi - Hospedagens",
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 18,
            ),
          ),
          backgroundColor: cor1,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(25),
          color: cor4,
          child: Expanded(
            child: Column(
              children: [
                const Text(
                  "Selecione as datas da sua reserva",
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                GridView.count(
                  //Compartilha o espaço
                  shrinkWrap: true,

                  //Cria o grid
                  crossAxisCount: 7,

                  //Gera os 30 dias
                  children: List.generate(30, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          //Verifica se está selecionado
                          index == setSelecionado(selecionados, index)
                              ? selecionados.remove(index)
                              : selecionados.add(index);
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.all(10),
                        color: index == setSelecionado(selecionados, index)
                            ? cor2
                            : cor3,
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: index == setSelecionado(selecionados, index)
                                ? cor4
                                : cor1,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Abril 2022",
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int setSelecionado(List selecionados, int index) {
    //Verifica se o index está na lista
    return selecionados.contains(index) ? index : -1;
    //Se sim, retorna o index
    //Se não, retorna -1 para que a lista inicie em zero
  }
}
