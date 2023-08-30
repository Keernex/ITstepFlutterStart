import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('My biography'),
        titleTextStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'img/bear.png',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              width: 400,
              height: 250,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 82, 147),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Черепашки-ниндзя — вымышленная команда из четырёх мутировавших антропоморфных черепах-подростков: Леонардо, Рафаэля, Донателло и Микеланджело (названных в честь четырёх художников эпохи Возрождения), которые обучаются искусству ниндзюцу со своим сэнсэем, крысой-мутантом, мастером Сплинтером. Устроив свою базу в канализации Нью-Йорка, они сражаются со злом на улицах города.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
