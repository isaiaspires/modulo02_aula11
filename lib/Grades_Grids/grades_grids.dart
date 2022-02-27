import 'package:flutter/material.dart';

class GradesGrids extends StatelessWidget {
  const GradesGrids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Grades Grids",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          toolbarHeight: 100,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.arrow_drop_up,
                  size: 96,
                  color: Colors.indigo,
                ),
                Icon(
                  Icons.arrow_drop_up,
                  size: 96,
                  color: Colors.indigo,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 64,
                ),
                Icon(
                  Icons.arrow_downward_rounded,
                  size: 48,
                ),
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 64,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(35),
              margin: const EdgeInsets.all(15),
              child: GridView.count(
                childAspectRatio: 0.6,
                shrinkWrap: true,
                crossAxisCount: 6,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                children: List.generate(12, (index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    color: Colors.amber.shade100,
                  );
                }),
              ),
            ),
            const SizedBox(height: 100),
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                height: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
