import 'dart:io';
import 'dart:math';

// // 2 задание.
// void main() {
//   var numsTask2 = File('Файлы для заданий\\2\\nums.txt');
//   var nums = numsTask2.readAsStringSync();
//   List<String> list = [];
//   List<int> listInt = [];
//   List<int> newList = [];

//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(',');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     listInt.add(number);
//   }

//   //Создание массива со всеми числами из предыдущего, чётных.
//   for (int i = 0; i < listInt.length; i++) {
//     if (listInt[i] % 2 == 1) {
//       newList.add(listInt[i]);
//     }
//   }

//   //Обновление файла. Теперь он без чётных чисел.
//   numsTask2.writeAsStringSync('');
//   for (int i = 0; i < newList.length; i++) {
//     numsTask2.writeAsStringSync('${newList[i]}, ', mode: FileMode.append);
//   }

//   print('Изначальный массив: $listInt');
//   print('Массив без чётных чисел: $newList');
// }







// // Задание 3.
// void main() {
//   var numsTask2 = File('Файлы для заданий\\3\\task3.txt');
//   var nums = numsTask2.readAsStringSync();
//   List<String> list = [];
//   List<int>  height = [];
//   int count = 0;
//   int water = 0;

//   //Разделение на отдельные элементы содержимого из текстового файла.
//   list.add(nums);
//   list = nums.split(',');
  
//   //Создание числового массива с числами из текстового файла.
//   for (int i = 0; i < list.length; i++) {
//     int number = int.parse(list[i]);
//     height.add(number);
//   }

//   //Нахождение наибольшего колличества воды между двумя линиями.
//   for (int i = 0; i < height.length; i++) {         //нужно для перебора всех линий, для нахождения, двух линий которые вмес-
//     for (int j = 0; j < height.length; j++) {       //те с осью x образуют контейнер, содержащий наибольшее количество воды.
//       if (height[i] > height[j]) {
//         if (i >= j) { // нужно для того чтобы, когда потом будем расстояние нахоить не отнимать от меньшего большее.
//           water = height[j] * (i - j); // умножаем высоту линии покороче на расстояние между двумя линиями.
//         }
//         else {
//           water = height[j] * (j - i); // умножаем высоту линии покороче на расстояние между двумя линиями.
//         }
//       } 
//     }
//     if (count < water) { // сохраниение преоблодающих по количеству воды значений в другую переменную.
//       count = water;
//     }
//     water = 0;
//   }

//   print('Массив: $height');
//   print('Наибольшее количество воды между двумя линиями: $count');
// }



