import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model/PokemonModel.dart';
import 'package:pokedex/pages/PokemonDetailPage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PokeDex'),
        centerTitle: true,
      ),
      body: ListView(
          children: List.generate(
              PokemonModel.samples.length,
              (index) => InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PokemonDetailPage(PokemonModel.samples[index]);
                  }));
                },
                  child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(children: [
                      Hero(tag: PokemonModel.samples[index].name,
                      child: Image.asset(PokemonModel.samples[index].imageAddress)),
                      SizedBox(height: 10,),
                      Text(PokemonModel.samples[index].name)
                    ]),
                  )))),
      ));
  }
}
