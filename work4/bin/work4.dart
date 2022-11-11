import 'dart:io';
import 'dart:math';

// // Задание 1.
// void main() {
//   stdout.write('Введи целое положительное число n: ');
//   int n = int.parse(stdin.readLineSync()!);
//   int count = 1;
//   n += 1;
//   for (int i = 1; n > 0; i++) {
//     n -= 1;
//     if (n % 3 == 0 && n != 0) {
//       count *= n;
//     }
//   }
//   print('Произведение натуральных чисел, кратных трём и не превышающим число $n = $count');
// }






// // Задание 2.
// void main() {
//   var numsTask2 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work4\\Файлы для заданий\\2\\numsTask2.txt');
//   var nums = numsTask2.readAsStringSync();
//   List<String> list = [];
//   List<int> listInt = [];
//   int indexZeroInListInt = 0;
//   int count = 0;
  

//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(';');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     listInt.add(number);
//   }

//   //нахождение индекса числа 0.
//   for (int i = 0; i < listInt.length; i++) {
//     if (listInt[i] == 0) {
//       indexZeroInListInt = i;
//       break;
//     }
//   }

//   print('Массив: $listInt');

//   //Перебор всех элементов до 0. И счёт суммы положительных элементов.
//   stdout.write('Все числа ДО нуля в массиве: ');
//   for (int i = 0; i < indexZeroInListInt; i++) {
//     stdout.write('${listInt[i]}, ');
//     if (listInt[i] > 0) {
//       count += listInt[i];
//     }
//   }
  
//   print('\nИндекс нуля: $indexZeroInListInt');
//   print('Сумма положительных элементов в массиве, находящихся ДО нуля: $count');
// }







// // Задание 3.
// void main() {
//   var numsTask3 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work4\\Файлы для заданий\\3\\numsTask3.txt');
//   var nums = numsTask3.readAsStringSync();
//   List<String> list = [];
//   List<int> listInt = [];
//   List<int> listBeforeZero = [];
//   int maxNumInListBeforeZero = 0;
//   int minNumInListBeforeZero = 0;
//   int indexZeroInListInt = 0;
//   int count = 0;
  

//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(',');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     listInt.add(number);
//   }

//   //нахождение индекса числа 0.
//   for (int i = 0; i < listInt.length; i++) {
//     if (listInt[i] == 0) {
//       indexZeroInListInt = i;
//       break;
//     }
//   }

//   //Добавление чисел ДО 0 из массива listInt в новый массив.
//   for (int i = 0; i < indexZeroInListInt; i++) {
//     int a = listInt[i];
//     listBeforeZero.add(a);
//   }

//   //Нахождение максимального и минимального элемента.
//   maxNumInListBeforeZero = listBeforeZero.reduce(max);
//   minNumInListBeforeZero = listBeforeZero.reduce(min);

//   //Определение отнолшения минимального и максимального элементов друг к другу.
//   count = (maxNumInListBeforeZero / minNumInListBeforeZero).floor();

//   print('Изначальный массив: $listInt');
//   print('Массив, в который входят элементы ДО 0 из изначального массива: $listBeforeZero');
//   print('Минимальный элемент: $minNumInListBeforeZero');
//   print('Максимальный элемент: $maxNumInListBeforeZero');
//   print('Индекс нуля: $indexZeroInListInt');
//   print('Отношение минимального и максимального элементов друг к другу: $count');
// }







// // Задание 4.
// void main() {
//   var numsTask4 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work4\\Файлы для заданий\\4\\numsTask4.txt');
//   var nums = numsTask4.readAsStringSync();
//   List<String> list = [];
//   List<int> listInt = [];
//   int count = 0;
  
//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(' ');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     listInt.add(number);
//   }

//   //Счёт количества одинаковых рядом стоящих чисел в массиве.
//   for (int i = 0; i < listInt.length - 1; i++) {
//     if (listInt[i] == listInt[i + 1]) {
//       count += 1;
//     }
//   }

//   print('Изначальный массив: $listInt');
//   print('Количество рядом стоящих чисел: $count');
// }







// // Задание 5.
// void main() {
//   stdout.write('Введи координату a: ');
//   int a = int.parse(stdin.readLineSync()!); //по сути ось x
//   stdout.write('Введи координату b: ');
//   int b = int.parse(stdin.readLineSync()!); //по сути ось y

//   if ((-1 < a) && (a < 3) && (-2 < b) && (b < 4)) {
//     print('Точка ПРИНАДЛЕЖИТ заштрихованной области.');
//   }
//   else if (((a == -1) && (-2 < b) && (b < 4)) || ((a == 3) && (-2 < b) && (b < 4)) || ((b == -2) && (-1 < a) && (a < 3)) || ((b == 4) && (-1 < a) && (a < 3))) {
//     print('Точка находится НА ГРАНИЦЕ заштрихованной области.');
//   }
//   else if (((a == -1) && (b == -2)) || ((a == 3) && (b == -2)) || ((a == 3) && (b == 4)) || ((a == -1) && (b == 4))) {
//     print('Точка В УГЛУ ГРАНИЦЫ выделенной области.');
//   }
//   else {
//     print('Точка ВНЕ заштрихованной области. ');
//   }
// }







// // Задание 6.
// void main() {
//   stdout.write('Введи координату a: ');
//   int a = int.parse(stdin.readLineSync()!); //по сути ось x
//   stdout.write('Введи координату b: ');
//   int b = int.parse(stdin.readLineSync()!); //по сути ось y

//   if ((a == 0) && ((b == 1) || (b == 0) || (b == -2)) || (((a == -1) || (a == 1)) && ((b == -1) || (b == -2)))) {
//     print('Точка ПРИНАДЛЕЖИТ заштрихованной области.');
//   }
//   else if (((a == -1) && (b == 0)) || ((a == 1) && (b == 0)) || ((a == -1) && (b == -3)) || ((a == 1) && (b == -3))) {
//     print('Точка находится НА ГРАНИЦЕ заштрихованной области.');
//   }
//   else if (((a == 0) && (b == 2)) || ((a == -2) && (b == -3)) || ((a == 2) && (b == -3))) {
//     print('Точка В УГЛУ ГРАНИЦЫ выделенной области.');
//   }
//   else {
//     print('Точка ВНЕ заштрихованной области. ');
//   }
// }

