import 'dart:io';
import 'dart:math';

// // Задание 1.
// void main() {
//   List<int> list = [];
  
//   for (int i = 0; list.length <= 100 ; i += 3) {
//     list.insert(0, i);
//   }

//   print('Массив: $list');
// }






// // Задание 2.
// void main() {
//   List<int> list = [];
  
//   for (int i = 1; list.length <= 100 ; i += 2) {
//     list.add(i);
//   }

//   print('Массив: $list');
// }






// // Задание 3.
// void main() {
//   try {
//     stdout.write('(Введи размер матрицы) n = ');
//     int n = int.parse(stdin.readLineSync()!);
  
//     var matrix = List.generate(n, (_) => List.generate(n, (_) => 1));

//     //Здесь поизводится сумма верхней и левой соседней ячейки и записывается в текущюю.
//     for (int i = 1; i < matrix.length; i++) {
//       for (int j = 1; j < matrix.length; j++) {
//         matrix[i][j] = matrix[i-1][j] + matrix[i][j-1];
//       }
//     }

//     //Красивый вывод матрицы.
//     for (int i = 0; i < matrix.length; i++) {
//       for (int j = 0; j < matrix.length; j++) {
//         stdout.write('${matrix[i][j]} \t');
//       }
//       print('');
//     }
//   }
//   catch (e) {
//     print('Нужно вводить числа');
//   }
// }





// // Задание 4.
// void main() {
//   Random random = Random();
//   int midTempMonth = 0;
//   List<int> listMidTemp = [];
//   var temperature = List.generate(12, (_) => List.generate(30, (_) => random.nextInt(40)));
  
//   for (int i = 0; i < temperature.length; i++) {
//     for (int j = 0; j < 30; j++) {
//       midTempMonth += temperature[i][j];
//     }
//     midTempMonth = (midTempMonth / 30).floor();
//     print('Месяц №${i+1} t(средняя) = $midTempMonth');
//     listMidTemp.add(midTempMonth);
//   }
  
//   listMidTemp.sort();
//   print('Отсортированный массив средних температур: $listMidTemp');
// }





// // Задание 5.
// void main() {
//   Random random = Random();
//   List<String> months = ['January' ,'February' ,'March' ,'April' ,'May' ,'June', 'July', 'August', 'September', 'October', 'November', 'December'];
//   Map<String, int> temperature = {};
//   int mT = 0;

//   for (String month in months) {
//     for (int i = 0; i < 30; i++) {
//     List<int> midTemp = List.generate(30, (_) => random.nextInt(40));
//     mT += midTemp[i];
//     }
//     mT = (mT / 30).floor();
//     temperature[month] = mT;
//   }
//   print('Средняя температура по месяцам:');
  
//   for (var item in temperature.entries) {
//     print('${item.key}: ${item.value}');
//   }
// }
