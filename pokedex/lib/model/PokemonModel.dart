import 'dart:ffi';

class PokemonModel {
  String name;
  String imageAddress;
  int indexNum;
  List<SkillModel> skills;

  PokemonModel({required this.name, required this.imageAddress, required this.indexNum, required this.skills}) {
    assert(indexNum > 0, 'index가 0보다 커야 함');
    assert(skills.length > 0, '스킬 개수가 0 이하이면 안 됨');
  }

  static List<PokemonModel> samples = [
    PokemonModel(name: '피카츄', imageAddress: 'assets/images/pikachu.png', indexNum: 25, skills: [
      SkillModel(name: '전기쇼크', damage: 40, pp: 30, learningLevel: 1),
      SkillModel(name: '전광석화', damage: 40, pp: 30, learningLevel: 11),
      SkillModel(name: '10만볼트', damage: 95, pp: 15, learningLevel: 26),
    ]),
    PokemonModel(name: '이상해씨', imageAddress: 'assets/images/bulbasaur.png', indexNum: 1, skills: [
      SkillModel(name: '몸통박치기', damage: 35, pp: 35, learningLevel: 1),
      SkillModel(name: '덩굴채찍', damage: 35, pp: 10, learningLevel: 10),
      SkillModel(name: '수면가루', damage: 0, pp: 15, learningLevel: 15),
      SkillModel(name: '솔라빔', damage: 120, pp: 10, learningLevel: 46),
    ]),
    PokemonModel(name: '파이리', imageAddress: 'assets/images/charmander.png', indexNum: 4, skills: [
      SkillModel(name: '할퀴기', damage: 40, pp: 35, learningLevel: 1),
      SkillModel(name: '불꽃세례', damage: 40, pp: 25, learningLevel: 7),
      SkillModel(name: '화염방사', damage: 95, pp: 15, learningLevel: 31),
      SkillModel(name: '회오리불꽃', damage: 15, pp: 15, learningLevel: 49),
    ]),
    PokemonModel(name: '꼬부기', imageAddress: 'assets/images/squirtle.png', indexNum: 7, skills: [
      SkillModel(name: '몸통박치기', damage: 35, pp: 35, learningLevel: 1),
      SkillModel(name: '거품', damage: 20, pp: 30, learningLevel: 7),
      SkillModel(name: '물대포', damage: 40, pp: 25, learningLevel: 13),
      SkillModel(name: '로케트박치기', damage: 100, pp: 15, learningLevel: 40),
    ]),
    PokemonModel(name: '갸라도스', imageAddress: 'assets/images/gyarados.png', indexNum: 130, skills: [
      SkillModel(name: '난동부리기', damage: 90, pp: 20, learningLevel: 1),
      SkillModel(name: '물기', damage: 60, pp: 25, learningLevel: 20),
      SkillModel(name: '파괴광선', damage: 150, pp: 5, learningLevel: 50),
      SkillModel(name: '하이드로펌프', damage: 120, pp: 5, learningLevel: 40),
    ]),
    PokemonModel(name: '망나뇽', imageAddress: 'assets/images/dragonite.png', indexNum: 149, skills: [
      SkillModel(name: '회오리', damage: 40, pp: 20, learningLevel: 15),
      SkillModel(name: '용의분노', damage: 40, pp: 10, learningLevel: 22),
      SkillModel(name: '역린', damage: 90, pp: 15, learningLevel: 61),
      SkillModel(name: '파괴광선', damage: 150, pp: 5, learningLevel: 75),
    ]),
    PokemonModel(name: '잠만보', imageAddress: 'assets/images/snorlax.png', indexNum: 143, skills: [
      SkillModel(name: '박치기', damage: 70, pp: 15, learningLevel: 29),
      SkillModel(name: '잠자기', damage: 0, pp: 10, learningLevel: 36),
      SkillModel(name: '코골기', damage: 40, pp: 15, learningLevel: 36),
      SkillModel(name: '구르기', damage: 30, pp: 20, learningLevel: 50),
    ]),
    PokemonModel(name: '팬텀', imageAddress: 'assets/images/haunter.png', indexNum: 94, skills: [
      SkillModel(name: '핥기', damage: 20, pp: 30, learningLevel: 1),
      SkillModel(name: '최면술', damage: 0, pp: 20, learningLevel: 1),
      SkillModel(name: '꿈먹기', damage: 100, pp: 15, learningLevel: 39),
    ]),
    PokemonModel(name: '전룡', imageAddress: 'assets/images/ampharos.png', indexNum: 181, skills: [
      SkillModel(name: '번개펀치', damage: 75, pp: 15, learningLevel: 30),
      SkillModel(name: '빛의장막', damage: 0, pp: 30, learningLevel: 42),
      SkillModel(name: '번개', damage: 120, pp: 10, learningLevel: 57),
    ]),
  ];
}

class SkillModel {
  String name;
  double damage;
  int pp;
  int learningLevel;

  SkillModel(
      {required this.name, required this.damage, required this.pp, required this.learningLevel});
}
