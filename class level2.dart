//mixin은 생성자가 없는 클레스를 의미함

class Strong {
  //이런 형태가 mixin임 생성자가 없음 아래에 있는 player과 다르게
  final double strenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("runnn");
  }
}

class Tall {
  final double height = 1.99;
}

enum Team {
  //enum으로 팀설정
  red("red"),
  blue("blue");

  final String print_str; //반환값 설정
  const Team(this.print_str); //반환값을 Team에 구성
}

class Player with Strong, QuickRunner, Tall {
  //with는 Player아래에 상속되는 느낌 클래스 안에 있는 친구들만
//가져온다는 느낌이고 extends는 extends 안에 있는 친구가 부모 클래스가 되는거임 그래서 super를 통하여 부모클래스에게 다가가야됨.
  final Team team;
  Player({
    required this.team, //name argument 설정
    required String name,
  });
  void sayHello() {
    runQuick(); //사용예시
  }
}

class kid with Tall {} // 이런식으로  생성자가 없는 친구들은 여러번 사용 가능함

class yong with Tall, Strong {}

void main() {
  var player = Player(
    team: Team.blue,
    name: 'nico',
  )..sayHello();
}
