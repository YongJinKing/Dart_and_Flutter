class Human {
  //부모클래스 생성
  final String name; //name 변수 생성
  Human({required this.name}); // name argument로 구성
  void sayHello() {
    print("Hi mu name is $name"); //Human에서 받은 name print
  }
}

enum Team {
  //enum으로 팀설정
  red("red"),
  blue("blue");

  final String print_str; //반환값 설정
  const Team(this.print_str); //반환값을 Team에 구성
}

class Player extends Human {
  final Team team;
  Player({
    required this.team, //name argument 설정
    required String name,
  }) : super(name: name); //Player에서 받은 name을

  @override // 부모클래스의 메소드를 가져와서 대체하는거임
  void sayHello() {
    // 메소드 선언
    super.sayHello(); // 부모메소드 가져옴
    print('and I play for ${team.print_str}'); // 부모메소드 print에서 하나추가
  }
}

void main() {
  var player = Player(
    team: Team.blue,
    name: 'nico',
  )..sayHello();
}