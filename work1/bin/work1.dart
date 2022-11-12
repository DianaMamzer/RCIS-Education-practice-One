import 'dart:io';
import 'dart:math';

// //Задание 1.
void main() {
  try {
    List<int> list = [];
    int xmin = 0; 
    Random random = Random();

    for (int i = 0; i < 10; i++) {
      var generateNums = random.nextInt(1000);
      list.add(generateNums);
    }

    xmin = list.reduce(min);

    print(' Массив: $list\n Номер минимального элемента: $xmin');
  }
  catch (e) {
    print('Нужно вводить числа');
  }
}











// // Задание 2.
// void main() {
//   try {
//     int sum = 0;
//     int mult = 1;
//     int mid = 1;
//     List<int> list = [];

//     for (int i = 0; i >= 0; i++) {
//       stdout.write(' Введи новое число в массив (ввод 0 для завершения): ');
//       int x = int.parse(stdin.readLineSync()!);
//       if (x != 0) {
//         list.add(x);
//       }
//       else if (x == 0) {
//         break;
//       }
    
//     }
  
//     for (int i = 0; i < list.length; i++) {
//       sum += list[i];
//       mult *= list[i];
//     }
//     mid = (sum / list.length).floor();

//     print(' Сумма элементов массива: $sum\n Произведение элементов массива $mult');
//     print(' Среднее арифметическое элементов массива: $mid');
//   }
//   catch (e) {
//     print('Нужно вводить числа');
//   }
// }










//Задание 3.
// void main() {
//   int short = 0;
//   int long = 0;
//   String shortElement = ' ';
//   String longElement = ' ';
//   List<String> list = [];
//   for (int i = 0; i >= 0; i++) {
//     stdout.write(' Введи новый элемент в массив (ввод пустоты для завершения): ');
//     var element = stdin.readLineSync()!;

//     if (element != '') {
//       list.add(element);
//     }
//     else if (element == '') {
//       break;
//     }
//   }
//   print(list);
//   for (int i = 0; i < list.length; i++) {
//     if (list[i].length <= list[short].length) {
//       shortElement = list[i];
      
//     }
//     else if (list[i].length > list[long].length) {
//       longElement = list[i];
        
//     }
//   }
//   print(' Массив: $list\n Минимальный элемент: $shortElement\n Максимальный элемент: $longElement');
// }











// //Задание 4.
// void main() {
//   stdout.write(' Введи начало массива: ');
//   int begin = int.parse(stdin.readLineSync()!);
//   stdout.write(' Введи конец массива: ');
//   int end = int.parse(stdin.readLineSync()!);
//   List<int> list = [];
//   int generateNum = 0;
//   Random random = Random();

//   for (int i = begin; i <= end; i++) {
//     generateNum = random.nextInt(1000);
//     list.add(generateNum);
//   }

//   for (int i = 0; i < list.length; i++) {
//     stdout.write('${list[i]} ');
//   }
// }










// // Задание 5.
// void main() {
//   List<String> list = [];
//   stdout.write('Введи строку: ');
//   String line = stdin.readLineSync()!;

//   list.add(line);
//   list = line.split(' ');

//   list.insert(0, 'Start');
//   list.add('End');
  
//   print('Массив: $list');
//   print('Количество слов, введёных пользователем: ${list.length - 2}');
//   print('Количество слов с учётом "start" и "end": ${list.length}');
// }
