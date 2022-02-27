import 'package:flutter/material.dart';

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rainbow",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "VLAVAAV Horizontal",
            style: TextStyle(
              fontSize: 24,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            getRainbow(),
            getRainbow(),
            getRainbow(),
            getRainbow(),
            getRainbow(),
            getRainbow(),
            getRainbow(),
          ],
        ),
      ),
    );
  }

  Row getRainbow() {
    return Row(
      children: [
        Container(
          width: 80,
          color: Colors.red,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Vermelho',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 80,
          color: Colors.orange,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Laranja',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 80,
          color: Colors.yellow,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Amarelo',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 80,
          color: Colors.green,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Verde',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 80,
          color: Colors.blue,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Azul',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 80,
          color: Colors.indigoAccent,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Anil',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 80,
          color: Colors.deepPurple,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Violeta',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
