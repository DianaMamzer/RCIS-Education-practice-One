import 'dart:io';
import 'dart:math';

// // Задание 1.
// void main() {
//   var numsTask1 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work6\\Файлы для заданий\\1\\numsTask1.txt');
//   var text = numsTask1.readAsStringSync();
//   List<String> list = [];
  
//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(text);
//   list = text.split(', ');
  
//   print('Массив: $list');

//   //Нахождение и вывод слов нечётной длины в массиве.
//   stdout.write('Слова нечётной длины: ');
//   for (int i = 0; i < list.length; i++) {
//     if (list[i].length % 2 == 1) {
//       stdout.write('${list[i]} ');
//     }
//   }
// }






// // Задание 2.
// void main() {
//   var numsTask2 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work6\\Файлы для заданий\\2\\numsTask2.txt');
//   var text = numsTask2.readAsLinesSync();
  
//   //Красивый вывод
//   for (int i = 0; i < text.length; i++) {
//     stdout.write('${text[i]} ');
//   }
// }






// // Задание 3.
// void main() {
//   stdout.write('Введи число: ');
//   int num = int.parse(stdin.readLineSync()!);
//   if ((num % 2 == 0) && (num % 10 == 0)) {
//     print('Число $num ЧЁТНОЕ и КРАТНО 10.');
//   }
//   else if ((num % 2 == 0) && (num % 10 != 0)) {
//     print('Число $num ЧЁТНОЕ, но НЕ КРАТНО 10.');
//   }
//   else if (num % 2 == 1) {
//     print('Число $num НЕЧЁТНОЕ и НЕ КРАТНОЕ 10.');
//   }
// }








// // Задание 4.
// void main() {
//   stdout.write('Введи положительное число a: ');
//   int a = int.parse(stdin.readLineSync()!);
//   List<int> list = [];
//   int num = 0;
//   int count = 0;

//   print('Введи остальные числа (ввод отрицательного закончит работу): ');
//   for (int i = 0; num >= 0 ; i++) {
//     num = int.parse(stdin.readLineSync()!);
//     list.add(num);
//   }
  
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] % a == 0) {
//       count += list[i];
//     }
//   }
//   print('Сумма чисел, делящихся на положительное число "a" нацело: $count');
// }








// // Задание 5.
// void main() {
//   stdout.write('(Введи размер матрицы в высоту) m = ');
//   int m = int.parse(stdin.readLineSync()!);
//   stdout.write('(Введи размер матрицы в ширину) n = ');
//   int n = int.parse(stdin.readLineSync()!);
//   Random random = Random();
//   var matrix = List.generate(m, (_) => List.generate(n, (_) =>  random.nextInt(2))); //m-высотаб, n-ширина
//   List<int> list2 = [];
//   //Здесь роизводится решение.
//   for (int i = 0; i < m; i++) {
//     int count = 0;
//     for (int j = 0; j < n; j++) {
//       count += matrix[i][j];
//     }
//     if (count % 2 == 1) {
//       list2.add(1);
//     }
//     else if (count % 2 == 0) {
//       list2.add(0);
//     }
//   }
//   //Красивый вывод матрицы 1.
//   print('вывод матрицы ДО');
//   for (int i = 0; i < m ; i++) {
//     for (int j = 0; j < n; j++) {
//       stdout.write('${matrix[i][j]} \t');
//     }
//     print('');
//   }
//   print('Числа, которые добавятся в новый столбец: $list2');
  
//   //Добавление нового столбца.
//   for (int i = 0; i < m; i++) {
//     matrix[i].add(list2[i]);
//   }
  
//   //Красивый вывод матрицы 2.
//   print('вывод матрицы ПОСЛЕ');
//   for (int i = 0; i < m ; i++) {
//     for (int j = 0; j < n + 1; j++) {
//       stdout.write('${matrix[i][j]} \t');
//     }
//     print('');
//   }
// }








// // Задание 6.
// void main() {
//   Random random = Random();
//   List<double> list = [];
//   List<double> plus = [];
//   List<double> minus = [];

//   //Создание массива list из рандомных чисел.
//   for (int i = 0; i < 50; i++) {
//     list.add(random.nextInt(500) - 250); //промежуток рандомных чисел от -250 до 250
//   }
//   //Определение + или - число.
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] > 0) {
//       plus.add(list[i]);
//     }
//     else if (list[i] < 0) {
//       minus.add(list[i]);
//     }
//   }
//   //Выводы.
//   print('Положительные числа: $plus');
//   print('Отрицательные числа: $minus');
// }
