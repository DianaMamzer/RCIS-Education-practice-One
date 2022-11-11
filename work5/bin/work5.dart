import 'dart:io';
import 'dart:math';

// //Задание 1.
// void main() {
//   var numsTask1 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work5\\Файлы для заданий\\1\\numsTask1.txt');
//   var nums = numsTask1.readAsStringSync();
//   List<String> list = [];
//   List<int> listInt = [];
//   int minNumInListInt = 0;
//   int count = 1;
//   int indexMinNumInListInt = 0;

//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(',');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     listInt.add(number);
//   }

//   //Нахождение индекса минимального элемента..
//   minNumInListInt = listInt.reduce(min);
//   for (int i = 0; i < listInt.length; i++) {
//     if (listInt[i] == minNumInListInt) {
//       indexMinNumInListInt = i;
//     }
//   }

//   //Нахождение произведения элементов расположенных после минимального.
//   for (int i = indexMinNumInListInt + 1; i < listInt.length; i++) {
//     count *= listInt[i];
//   }

//   print('Массив $listInt');
//   print('Минимальный элемент: $minNumInListInt');
//   print('Индекс минимального элемента: $indexMinNumInListInt');
//   print('Произведение элементов расположенных после минимального: $count');
  
// }







// // Задание 2.
// void main() {
//   var numsTask2 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work5\\Файлы для заданий\\2\\numsTask2.txt');
//   var nums = numsTask2.readAsStringSync();
//   List<String> list = [];
//   List<int> listInt = [];
//   List<String> listString = [];
  

//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(';');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     listInt.add(number);
//   }

//   listInt.sort();
//   //Создание текстового массива с числами в виде строк в нём.
//   for (int i = 0; i < listInt.length; i++) {
//     String numberInString = '${listInt[i]}';
//     listString.add(numberInString);
//   }
//   //Добавление отсортированного и строчного массива обратно в файл.
//   numsTask2.writeAsStringSync('');
//   for (int i = 0; i < listString.length; i++) {
//     numsTask2.writeAsStringSync('${listString[i]}; ', mode: FileMode.append);
//   }

//   print(' Массив ДО $list, \n Массив ПОСЛЕ: $listInt');
// }


// // Задание 3.
// void main() {
//   var numsTask3 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work5\\Файлы для заданий\\3\\numsTask3.txt');
//   var nums = numsTask3.readAsStringSync();
//   List<String> list = [];
//   List<int> listInt = [];
//   int minNumInListInt = 0;
//   int indexMinNumInListInt = 0;
//   int count = 0;
  

//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(',');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     listInt.add(number);
//   }

//   //Нахождение индекса минимального элемента.
//   minNumInListInt = listInt.reduce(min);
//   for (int i = 0; i < listInt.length; i++) {
//     if (listInt[i] == minNumInListInt) {
//       indexMinNumInListInt = i;
//     }
//   }

//   //Нахождение среднего арифметического элементов расположенных ДО минимального.
//   for (int i = 0; i < indexMinNumInListInt; i++) {
//     count += listInt[i];
//   }
//   count = (count / (indexMinNumInListInt + 1)).floor();

//   print('Массив $listInt');
//   print('Минимальный элемент: $minNumInListInt');
//   print('Индекс минимального элемента: $indexMinNumInListInt');
//   print('Среднее арифметическое элементов расположенных ДО минимального: $count');
// }







// Задание 4.
// void main() {
//   var numsTask4 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work5\\Файлы для заданий\\4\\numsTask4.txt');
//   var nums = numsTask4.readAsStringSync();
//   List<String> list = [];
//   List<int> listInt = [];
//   int maxNumInListInt = 0;
//   int count = 0;
  

//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(',');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     listInt.add(number);
//   }

//   //Нахождение максимального элемента.
//   maxNumInListInt = listInt.reduce(max);

//   //Сумма элементов, отличающихся от максимального на 1. (меньше max на 1)
//   for (int i = 0; i < listInt.length; i++) {
//     if (listInt[i] == maxNumInListInt - 1) {
//       count += listInt[i];  
//     } 
//   }
  
//   print('Массив $listInt');
//   print('Максимальный элемент: $maxNumInListInt');
//   print('Сумма элементов, отличающихся от максимального на 1: $count');
// }






// // Задание 5.
// void main() {
//   var numsTask5 = File('K:\\РКИС (дарт)\\gr621 madse\\RcisEducationPracticeOne\\work5\\Файлы для заданий\\5\\numsTask5.txt');
//   var nums = numsTask5.readAsStringSync();
//   List<String> list = [];
//   List<int> listInt = [];
//   int maxNumInListInt = 0;
//   int minNumInListInt = 0;
//   int indexMaxNumInListInt = 0;
//   int indexMinNumInListInt = 0;
//   int count = 0;
  

//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(',');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     listInt.add(number);
//   }

//   //Нахождение максимального и минимального элемента.
//   maxNumInListInt = listInt.reduce(max);
//   minNumInListInt = listInt.reduce(min);

//   //Нахождение индекса минимального элемента.
//   for (int i = 0; i < listInt.length; i++) {
//     if (listInt[i] == minNumInListInt) {
//       indexMinNumInListInt = i;
//     }
//   }

//   //Нахождение индекса максимального элемента.
//   for (int i = 0; i < listInt.length; i++) {
//     if (listInt[i] == maxNumInListInt) {
//       indexMaxNumInListInt = i;
//     }
//   }

//   //Нахождение среднего арифметического элементов расположенных ДО минимального.
//   for (int i = indexMinNumInListInt + 1; i < indexMaxNumInListInt; i++) {
//     count += listInt[i];
//   }
//   count = (count / (indexMaxNumInListInt - indexMinNumInListInt - 1)).floor();
  
//   print('Массив $listInt');
//   print('Минимальный элемент: $minNumInListInt, его индекс: $indexMinNumInListInt');
//   print('Максимальный элемент: $maxNumInListInt, его индекс: $indexMaxNumInListInt');
//   print('Среднее арифметическое элементов расположенных между минимальным и максимальным: $count');
// }

