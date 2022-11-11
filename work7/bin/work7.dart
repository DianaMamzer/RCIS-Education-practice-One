import 'dart:io';

void main() {
  Map journ = {
    'Понедельник' : {
        'Имя задачи' : 'нет дел',
        'Описание задачи' : 'нет',
        'Дедлайн' : 'нет'
      },
    'Вторник' : {
        'Имя задачи' : 'нет дел',
        'Описание задачи' : 'нет',
        'Дедлайн' : 'нет'
      },
    'Среда' : {
        'Имя задачи' : 'нет дел',
        'Описание задачи' : 'нет',
        'Дедлайн' : 'нет'
      },
    'Четверг' : {
        'Имя задачи' : 'нет дел',
        'Описание задачи' : 'нет',
        'Дедлайн' : 'нет'
      },
    'Пятница' : {
        'Имя задачи' : 'нет дел',
        'Описание задачи' : 'нет',
        'Дедлайн' : 'нет'
      },
    'Суббота' : {
        'Имя задачи' : 'нет дел',
        'Описание задачи' : 'нет',
        'Дедлайн' : 'нет'
      },
    'Воскресенье' : {
        'Имя задачи' : 'нет дел',
        'Описание задачи' : 'нет',
        'Дедлайн' : 'нет'
      }
  };
  String inputComand = '';
  String day = '';
  String name = '';
  String detail = '';
  String deadline = '';

  while (inputComand != 'exit') {
    stdout.write('Введите комманду (help): ');
    inputComand = stdin.readLineSync()!;
    
    //Организация просмотра команд, которые можно вводить в ежедневнике.
    if (inputComand == 'help') {
      print('Список всех комманд: help (помощь),\noutput all (вывести весь ежедневник),\noutput single (вывести конкретный день недели),\nchange (изменить),\ndelete (удалить),\nexit (выйти)');
    }
    //Организация просмотра дел на все дни.
    else if (inputComand == 'output all') {
      print('Вывод ежедневника:');    
      for (var days in journ.entries) {
        print('${days.key}: ${days.value}');
      }
    }

    //Организация просмотра дел на конкретный день.
    else if (inputComand == 'output single') {
      stdout.write('На какой конкретно день вы хотите посмотреть дела? (Напиши название дня на английском) ');
      day = stdin.readLineSync()!;
      if (day == 'monday') {
        print(journ['Понедельник']);
      }
      else if (day == 'tuesday') {
        print(journ['Вторник']);
      }
      else if (day == 'wednesday') {
        print(journ['Среда']);
      }
      else if (day == 'thursday') {
        print(journ['Четверг']);
      }
      else if (day == 'friday') {
        print(journ['Пятница']);
      }
      else if (day == 'saturday') {
        print(journ['Суббота']);
      }
      else if (day == 'sunday') {
        print(journ['Воскресенье']);
      }
      else {
        print('Такого дня не существует. Выход из режима просмотра задач на конкретный день.');
      }
    }
    //Организация изменений и удаления дел.
    else if (inputComand == 'change' || inputComand == 'delete') {
      //Разделение команд 'change' и 'delete'
      if (inputComand == 'change') {
        stdout.write('На какой день вы хотите изменить дело? (Напиши название дня на английском) ');
        day = stdin.readLineSync()!;
        stdout.write('Введи название дела: ');
        name = stdin.readLineSync()!;
        stdout.write('Введи описание дела: ');
        detail = stdin.readLineSync()!;
        stdout.write('Введи дедлайн: ');
        deadline = stdin.readLineSync()!;
      }
      else {
        stdout.write('На какой день вы хотите удалить дело? (Напиши название дня на английском) ');
        day = stdin.readLineSync()!;
        name = 'Нет дел';
        detail = 'Нет';
        deadline = 'Нет';
      }
      //Записывание для конкретного дня недели имя задачи, её описание и дедлайн
      if (day == 'monday') {
        journ['Понедельник']['Имя задачи'] = name;
        journ['Понедельник']['Описание задачи'] = detail;
        journ['Понедельник']['Дедлайн'] = deadline;
      }
      else if (day == 'tuesday') {
        journ['Вторник']['Имя задачи'] = name;
        journ['Вторник']['Описание задачи'] = detail;
        journ['Вторник']['Дедлайн'] = deadline;
      }
      else if (day == 'wednesday') {
        journ['Среда']['Имя задачи'] = name;
        journ['Среда']['Описание задачи'] = detail;
        journ['Среда']['Дедлайн'] = deadline;
      }
      else if (day == 'thursday') {
        journ['Четверг']['Имя задачи'] = name;
        journ['Четверг']['Описание задачи'] = detail;
        journ['Четверг']['Дедлайн'] = deadline;
      }
      else if (day == 'friday') {
        journ['Пятница']['Имя задачи'] = name;
        journ['Пятница']['Описание задачи'] = detail;
        journ['Пятница']['Дедлайн'] = deadline;
      }
      else if (day == 'saturday') {
        journ['Суббота']['Имя задачи'] = name;
        journ['Суббота']['Описание задачи'] = detail;
        journ['Суббота']['Дедлайн'] = deadline;
      }
      else if (day == 'sunday') {
        journ['Воскресенье']['Имя задачи'] = name;
        journ['Воскресенье']['Описание задачи'] = detail;
        journ['Воскресенье']['Дедлайн'] = deadline;
      }
      else {
        print('Такого дня не существует. Выход из режима изменения задач ежедневника.');
      }
    }
  }
}
