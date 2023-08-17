import 'package:flutter/material.dart';
import 'package:pokedex/model/PokemonModel.dart';

class PokemonDetailPage extends StatefulWidget {
  const PokemonDetailPage(this.pokemon, {Key? key}) : super(key: key);
  final PokemonModel pokemon;

  @override
  State<PokemonDetailPage> createState() => _PokemonDetailPageState();
}

class _PokemonDetailPageState extends State<PokemonDetailPage> {
  double lv = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemon.name),
      ),
      body: ListView(
        children: [
          buildImage(),
          buildSlider(),
          buildTable()
        ],
      ),
    );
  }

  Slider buildSlider() {
    return Slider(
            value: lv,
            min: 1,
            max: 99,
            divisions: 98,
            label: 'lv: ${lv.toInt().toString()}',
            onChanged: (value) {
              lv = value;
              setState(() {});
            });
  }

  Center buildImage() {
    return Center(
      child: SizedBox(
        height: 300,
        child: Hero(
          tag: widget.pokemon.name,
          child: Image.asset(
            widget.pokemon.imageAddress,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Padding buildTable() {
    List<SkillModel> skillSet = widget.pokemon.skills.where((element) => lv > element.learningLevel).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Table(
        border: TableBorder.all(),
        children: [
          buildTableRow(),
          ...List.generate(
              skillSet.length,
              (index) => TableRow(children: [
                Center(
                  child: Text(skillSet[index].learningLevel.toString()),
                ),
                Center(
                      child: Text(skillSet[index].name),
                    ),
                    Center(
                      child: Text(skillSet[index].damage.toString()),
                    ),
                    Center(
                      child: Text(skillSet[index].pp.toString()),
                    )
                  ]))
        ],
      ),
    );
  }

  TableRow buildTableRow() {
    return TableRow(
      children: [Center(child: Text('레벨'),), Center(child: Text('기술')), Center(child: Text('위력')), Center(child: Text('PP'))],
    );
  }
}
