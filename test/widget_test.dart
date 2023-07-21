// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';


void main() {
  test('', () {
    var matrix = <List<int?>>[[1,2,3],[3,2,1],[1,2,3]];
    int row = 0;
    int column = 0;
    addElementsWithMargins(row, column, matrix);
     row = 1;
    column = 3;
    addElementsWithMargins(row, column, matrix);
  });
}

void addElementsWithMargins(int row, int column, List<List<int?>> matrix) {
  // Проверяем, достигли ли мы границы матрицы
  if (row == 0 || row == matrix.length - 1 || column == 0 || column == matrix[0].length - 1) {
    // Создаем новую матрицу с увеличенными размерами
    List<List<int?>> newMatrix = matrix;
    var rowLength = matrix[0].length;
// Добавляем элементы по бокам выбранного элемента
    for (int i = 0; i < newMatrix.length; i++) {
      if(column == 0) {
         newMatrix[i].insert(column, null);

      }
      if(column == matrix.length - 1) {

          newMatrix[i].add(null);
      }
    }

    // Добавляем элементы сверху и снизу выбранного элемента
    if(row == 0) {
      final list = List<int?>.generate(newMatrix[0].length, (index) {
         return null;
      });
      newMatrix.insert(0, list);
    }
    if(row == newMatrix.length - 1) {
      final list = List<int?>.generate(newMatrix[0].length, (index) {
         return null;
      });
      newMatrix.add( list);
    }




    // Обновляем значения текущей строки и текущей колонки
      if(row == 0)
        row++;

      if(column == 0)

      column++;
    replaceSurroundingNulls(row, column, newMatrix);

    // Обновляем матрицу
    matrix = newMatrix;
  } else
  replaceSurroundingNulls(row, column, matrix);

  // Выводим матрицу с новыми элементами
  print(row);
  print(column);
  print(matrix);
}

void replaceSurroundingNulls(int row, int column, List<List<int?>> matrix) {
  // Замещаем Null элементы вокруг указанных индексов значением 4

  // Определяем границы подматрицы 3x3
  int startRow = row - 1;
  int endRow = row + 1;
  int startColumn = column - 1;
  int endColumn = column + 1;
  if(startRow < 0) startRow = 0;
  if(endRow > matrix.length) endRow = matrix.length;
  if(startColumn < 0) startColumn = 0;
  if(endColumn > matrix[column].length) endColumn = matrix[column].length;

  // Проверяем, выходят ли границы за пределы матрицы и замещаем Null элементы
  for (int i = startRow; i <= endRow; i++) {
    for (int j = startColumn; j <= endColumn; j++) {
      if(matrix[i][j] == null) {
        matrix[i][j] = 4;
      }

    }
  }
}