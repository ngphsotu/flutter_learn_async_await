// ignore_for_file: avoid_print

// Case 1
/*
Future<String> goiDoAn() async {
  print('♥️ Chuẩn bị món ăn bạn vừa chọn ♥️');
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
  var monAn = await lamMonAn();
  return '♥️ $monAn của bạn đã xong ♥️';
}

Future<String> lamMonAn() {
  return Future.delayed(const Duration(seconds: 5), () => 'cơm gà');
}

Future<void> main() async {
  print('♥️ Bắt đầu gọi đồ ăn ♥️');
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
  print(await goiDoAn());
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
}
*/

// Case 2
/*
Future<String> goiDoAn() async {
  print('♥️ Chuẩn bị món ăn bạn vừa chọn ♥️');
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
  var monAn = await lamMonAn();
  return '♥️ $monAn của bạn đã xong ♥️';
}

Future<String> lamMonAn() {
  // return Future.delayed(const Duration(seconds: 5), () => 'cơm gà');
  return Future.delayed(
      const Duration(seconds: 5),
      () => throw Exception(
          'Quán hết đồ rồi anh ơi, hẹn anh lần khác ghé quán ạ ♥️'));
}

Future<void> main() async {
  print('♥️ Bắt đầu gọi đồ ăn ♥️');
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
  print(await goiDoAn());
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
}

void main() {
  print('♥️ Bắt đầu gọi đồ ăn ♥️');
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
  var monAn = goiDoAn();
  print('♥️ Đang làm món ăn bạn vừa chọn ♥️');
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
  monAn.then((value) => print(value), onError: (err) => print(err));
}
*/

// Case 3
Future<String> goiDoAn() async {
  print('♥️ Chuẩn bị món ăn bạn vừa chọn ♥️');
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
  var monAn = await lamMonAn();
  return '♥️ $monAn của bạn đã xong ♥️';
}

Future<String> lamMonAn() {
  // return Future.delayed(const Duration(seconds: 5), () => 'cơm gà');
  return Future.delayed(
      const Duration(seconds: 5),
      () => throw Exception(
          'Quán hết đồ rồi anh ơi, hẹn anh lần khác ghé quán ạ ♥️'));
}

Future<void> main() async {
  print('♥️ Bắt đầu gọi đồ ăn ♥️');
  print('----------♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️----------');
  try {
    var monAn = goiDoAn();
    print(await monAn);
  } catch (err) {
    print('$err');
  }
}
