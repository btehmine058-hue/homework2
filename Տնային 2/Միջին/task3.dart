
Future<int> getNumber(int value) async {
  if (value <= 0) {
    throw Exception('Թիվը պետք է դրական լինի');
  }

  await Future.delayed(Duration(milliseconds: 100));
  return value;
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0;
  }
}

Future<void> main() async {
  print(await safeGetNumber(10));
  print(await safeGetNumber(-5));
}
