class Caracters {
  late int char_id;
  late String name;
  late String nickname;
  late String image;
  late List<dynamic> jobs;
  late List<dynamic> appearanceOfSeasons;
  late String actorname;

  Caracters.fromjson(Map<String, dynamic> json) {
    char_id = json['char_id'];
    name = json['name'];
    nickname = json['nickname'];
    image = json['img'];
    jobs = ['occupation'];
    appearanceOfSeasons = ['appearance'];
    actorname = json['portrayed'];
  }
}
