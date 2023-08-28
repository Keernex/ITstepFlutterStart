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
        body: const Center(
          child: Column(
            children: Image.asset(
              'dd.jpg',
              fit: BoxFit.cover,
              width: 300,
              height: 300,
            ),
            children: <Widget>[
              OutlinedCardExample(),
            ],
          ),
        ));
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
              child: Text(
                  'Я макс веб-разработчик и мне 20 лет :) \n І я люблю піцу :) \n Спасибо за внимание! :)')),
        ),
      ),
    );
  }
}
