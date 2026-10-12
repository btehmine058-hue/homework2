
void main() {
  List<String> shoppingList = [
    'Հաց',
    'Կաթ',
    'Ձու',
  ];

  shoppingList.add('Պանիր');

  shoppingList.insert(1, 'Կարագ');

  shoppingList.removeAt(0);

  shoppingList[1] = 'Յոգուրտ';

  print('Առաջին ապրանքը՝ ${shoppingList.first}');
  print('Վերջին ապրանքը՝ ${shoppingList.last}');

  print('Դատարկ է՝ ${shoppingList.isEmpty}');

  print('Գնումների ցուցակ՝ $shoppingList');
}
