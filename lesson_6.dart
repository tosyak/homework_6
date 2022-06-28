import 'dart:math';

void main() {
  print(sumFunc(4, 7));
  print(subFunc(6, 84));
  print(multFunc(16, 38));
  print(devFunc(67, 8));
  sumFunc(34, 5465);
  subFunc(63, 184);
  multFunc(116, 381);
  devFunc(657, 458);

  print(compare1(13, 5));
  print(compare2(33, 5));
  print(compare3(37, 53));
  print(compare4(3, 57));

  compare12(15, 48);
  compare22(75, 18);
  compare32(35, 78);
  compare42(54, 87);

  print(triangle(3, 4));

  squarePrint(3, 3);

  printPyramid(8);
  print(stringCouner('123123'));
  print(symbolChecker('12345'));
  print(letterChecker('asdf'));
}

// Решить следующие примеры через функции двумя способами:
// 1 вариант - через print
// 2 вариант - через return
// 1) Вывести на экран результат следующих примеров:
// 2+2=

int sumFunc(int a, int b) {
  return a + b;
}

void sumFunc1(int a, int b) {
  print(a + b);
}

// 5-10=

int subFunc(int a, int b) {
  return a - b;
}

void subFunc1(int a, int b) {
  print(a - b);
}
// 16*3=

num multFunc(int a, int b) {
  return a * b;
}

void multFunc1(int a, int b) {
  print(a * b);
}

// 18/2 =

num devFunc(int a, int b) {
  return a / b;
}

void devFunc1(int a, int b) {
  print(a / b);
}
// Примечание: Создайте переменные для каждого примера

// 2) Сравнить следующие знания и вывести результат на экран:
// a = 12; b = 15;
// a>b =

bool compare1(int a, b) {
  return a > b;
}

void compare12(int a, b) {
  print(a > b);
}

// a<b =
bool compare2(int a, b) {
  return a < b;
}

void compare22(int a, b) {
  print(a < b);
}
// a<=b =

bool compare3(int a, b) {
  return a >= b;
}

void compare32(int a, b) {
  print(a >= b);
}

// a>=b =
bool compare4(int a, b) {
  return a <= b;
}

void compare42(int a, b) {
  print(a <= b);
}
// a==b =

// 1) Функция showUser принимает два параметра. Первый параметр имя
// пользователя, а второй его возраст. Внутри функции реализовать вывод
// на экран данных о пользователе.

void showUser(String name, int age) {
  print('Your name is $name, you are $age years old');
}
// 2) Функция showList принимает массив. Внутри функции реализовать
// вывод на экран первого и последнего элемента массива.

void shoList(List<int> list) {
  print(list.first);
  print(list.last);
}
// 3) Дан прямоугольный треугольник. Написать функцию, которая
// принимает два катета(a,b) и вычисляет гипотенузу. Вычислить по
// теореме Пифагора.

num triangle(int a, int b) {
  return (sqrt(a * a + b * b));
}
// 4) Нарисовать квадрат из символов. Функция принимает два параметра
// (height и with).
// Пример: *****
// *****
// *****
// *****

squarePrint(int length, int heigth) {
  String star = '*' * length;
  for (var i = 0; i < heigth; i++) {
    print(star);
  }
}

// 5) Нарисовать пирамиду. Функция принимает один параметр (height)
// Высота пирамиды
// *
// ***
// *****
// *******
// *********
// ***********
// *************
// ***************

void printPyramid(int height) {
  int spaceCounter = height - 1;
  for (var i = 0; i < height; i++) {
    print((' ' * spaceCounter + '*' * (i + 1)) + '*' * i);
    spaceCounter--;
  }
}

// 6)Дана строка из 6-ти цифр. Проверьте, что сумма первых трех цифр
// равняется сумме вторых трех цифр. Если это так - выведите 'да', в
// противном случае выведите 'нет'.

bool stringCouner(String string) {
  var splitedString = string.split('');
  var result;
  switch (splitedString[0] + splitedString[1] + splitedString[2] ==
      splitedString[3] + splitedString[4] + splitedString[5]) {
    case true:
      result = true;
      break;
    case false:
      result = false;
      break;
  }
  return result;
}

// 7)Дана строка с цифрами, например, '12345'. Проверьте, что первым
// символом этой строки является цифра 1, 2 или 3. Если это так -
// выведите 'да', в противном случае выведите 'нет'.

bool symbolChecker(String string) {
  var result;
  switch (string.split('').first == '1' ||
      string.split('').first == '2' ||
      string.split('').first == '3') {
    case true:
      result = true;
      break;
    case false:
      result = false;
      break;
  }
  return result;
}
// 8) Дана строка, состоящая из символов, например, 'abcde'. Проверьте,
// что первым символом этой строки является буква 'a'. Если это так -
// выведите 'да', в противном случае выведите 'нет'.

bool letterChecker(String string) {
  var result;
  switch (string.split('').first == "a") {
    case true:
      result = true;
      break;
    case false:
      result = false;
      break;
  }
  return result;
}
