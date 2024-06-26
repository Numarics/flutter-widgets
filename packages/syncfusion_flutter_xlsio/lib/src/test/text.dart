// ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import '../../xlsio.dart';
import 'xlsio_workbook.dart';

// ignore: public_member_api_docs
void xlsioText() {
  group('Text', () {
    test('using setNumber()', () {
      final Workbook workbook = Workbook(2);
      final Worksheet sheet = workbook.worksheets[0];
      final Range range = sheet.getRangeByIndex(1, 2);
      range.setText('M');
      final Range range1 = sheet.getRangeByIndex(6, 2);
      range1.setText('Zee');
      final Range range2 = sheet.getRangeByIndex(15, 15);
      range2.setText('MJ');
      final Range range3 = sheet.getRangeByIndex(4, 8);
      range3.setText('MMMM');
      final Worksheet sheet1 = workbook.worksheets[1];
      final Range range4 = sheet1.getRangeByIndex(4, 8);
      range4.setText('JJJJJJJJ');
      final Range range5 = sheet1.getRangeByIndex(2, 4);
      range5.setText('Yas');
      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelTextUsingSetText.xlsx');
      workbook.dispose();
    });

    test('using setText() with Name Index', () {
      final Workbook workbook = Workbook(2);
      final Worksheet sheet = workbook.worksheets[0];
      final Range range = sheet.getRangeByName('A4');
      range.setText('MS');
      final Range range1 = sheet.getRangeByName('Z10');
      range1.setText('Heloo');
      final Range range2 = sheet.getRangeByName('AA4');
      range2.setText('Universe');
      final Range range3 = sheet.getRangeByName('D4');
      range3.setText('Zee');
      final Worksheet sheet1 = workbook.worksheets[1];
      final Range range4 = sheet1.getRangeByName('J16');
      range4.setText('Berry');
      final Range range5 = sheet1.getRangeByName('M22');
      range5.setText('Ice Cream');
      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelTextUsingSetTextNameIndex.xlsx');
      workbook.dispose();
    });

    test('using setText() for Multiple range', () {
      final Workbook workbook = Workbook(2);
      final Worksheet sheet = workbook.worksheets[0];
      final Range range = sheet.getRangeByIndex(1, 2, 2, 3);
      range.setText('Jump');
      final Range range1 = sheet.getRangeByIndex(6, 2, 10, 4);
      range1.setText('Black Current');
      final Range range2 = sheet.getRangeByIndex(10, 10, 15, 15);
      range2.setText('Lucy');
      final Range range3 = sheet.getRangeByIndex(1, 4, 4, 8);
      range3.setText('White');
      final Worksheet sheet1 = workbook.worksheets[1];
      final Range range4 = sheet1.getRangeByIndex(4, 8, 8, 12);
      range4.setText('Jungle');
      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelTextUsingSetTextForMultipleRange.xlsx');
      workbook.dispose();
    });

    test('using setText() for Multiple final Range with Name Index', () {
      final Workbook workbook = Workbook(1);
      final Worksheet sheet = workbook.worksheets[0];
      final Range range = sheet.getRangeByName('A4:D10');
      range.setText('Jam');
      final Range range1 = sheet.getRangeByName('Z16:AA20');
      range1.setText('Zam');
      final Range range2 = sheet.getRangeByName('J16:M22');
      range2.setText('Fruits');
      final Range range3 = sheet.getRangeByName('D20:G24');
      range3.setText('Hai');
      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelTextUsingSetTextForMultipleRangeNameIndex.xlsx');
      workbook.dispose();
    });

    test('using text', () {
      final Workbook workbook = Workbook(2);
      final Worksheet sheet = workbook.worksheets[1];
      final Range range = sheet.getRangeByIndex(2, 3);
      range.text = 'Pen';
      final Range range1 = sheet.getRangeByIndex(26, 26);
      range1.text = 'Swing';
      final Range range2 = sheet.getRangeByIndex(10, 10);
      range2.text = 'Human';
      final Range range3 = sheet.getRangeByIndex(50, 56);
      range3.text = 'Mmmm';
      final Range range4 = sheet.getRangeByIndex(8, 12);
      range4.text = 'Jjjj';
      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelTextUsingText.xlsx');
      workbook.dispose();
    });

    test('using text for multiple range', () {
      final Workbook workbook = Workbook(3);
      final Worksheet sheet = workbook.worksheets[0];
      final Worksheet sheet1 = workbook.worksheets[1];
      final Range range = sheet.getRangeByIndex(2, 3, 10, 12);
      range.text = 'Monday';
      final Range range1 = sheet.getRangeByIndex(10, 10, 20, 20);
      range1.text = 'November';
      final Range range2 = sheet.getRangeByIndex(70, 50, 75, 50);
      range2.text = 'Friday';
      final Range range3 = sheet1.getRangeByIndex(20, 40, 25, 45);
      range3.text = 'Galaxy';
      final Range range4 = sheet1.getRangeByIndex(1, 12, 10, 15);
      range4.text = 'World';
      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelTextUsingTextForMultipleRange.xlsx');
      workbook.dispose();
    });

    test('using text with Name Index', () {
      final Workbook workbook = Workbook();
      final Worksheet sheet = workbook.worksheets[0];
      final Range range = sheet.getRangeByName('A4');
      range.text = 'Apple';
      final Range range1 = sheet.getRangeByName('Z10');
      range1.text = 'Food';
      final Range range2 = sheet.getRangeByName('AA4');
      range2.text = 'ABCD';
      final Range range3 = sheet.getRangeByName('D4');
      range3.text = 'XyZ';
      final Range range4 = sheet.getRangeByName('J16');
      range4.text = 'Cat';
      final Range range5 = sheet.getRangeByName('M22');
      range5.number = 161616;
      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelTextUsingTextNameIndex.xlsx');
      workbook.dispose();
    });

    test('using Text for Multiple final Range with Name Index', () {
      final Workbook workbook = Workbook(1);
      final Worksheet sheet = workbook.worksheets[0];
      final Range range = sheet.getRangeByName('A4:D10');
      range.text = 'MJYZ';
      final Range range1 = sheet.getRangeByName('Z16:AA20');
      range1.text = 'Man';
      final Range range2 = sheet.getRangeByName('J16:M22');
      range2.text = 'Zoo';
      final Range range3 = sheet.getRangeByName('D20:G24');
      range3.text = 'Zebra';
      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelTextUsingTextForMultipleRangeNameIndex.xlsx');
      workbook.dispose();
    });

    test('with all possibilities', () {
      final Workbook workbook = Workbook();
      final Worksheet sheet = workbook.worksheets[0];
      final Range range = sheet.getRangeByIndex(1, 1);
      range.text = 'M\nM';
      final Range range1 = sheet.getRangeByName('A2');
      range1.text = 'M\tJ';
      final Range range2 = sheet.getRangeByIndex(3, 1);
      range2.text = '--';
      final Range range3 = sheet.getRangeByName('A4');
      range3.text = '#';
      final Range range4 = sheet.getRangeByName('A5');
      range4.text = '|';
      final Range range5 = sheet.getRangeByIndex(6, 1);
      range5.text = r'\\';
      final Range range6 = sheet.getRangeByIndex(7, 1);
      range6.text = "'";
      final Range range7 = sheet.getRangeByName('A8');
      range7.text = '@';
      final Range range8 = sheet.getRangeByIndex(9, 1);
      range8.text = '!';
      final Range range9 = sheet.getRangeByName('A10');
      range9.text = r'$';
      final Range range10 = sheet.getRangeByName('A11');
      range10.text = '%';
      final Range range11 = sheet.getRangeByIndex(12, 1);
      range11.text = '^';
      final Range range12 = sheet.getRangeByName('A13');
      range12.text = '&';
      final Range range13 = sheet.getRangeByIndex(14, 1);
      range13.text = '*';
      final Range range14 = sheet.getRangeByName('A15');
      range14.text = '(';
      final Range range15 = sheet.getRangeByIndex(16, 1);
      range15.text = ')';
      final Range range16 = sheet.getRangeByIndex(17, 1);
      range16.text = '+';
      final Range range17 = sheet.getRangeByName('A18');
      range17.text = '}';
      final Range range18 = sheet.getRangeByIndex(19, 1);
      range18.text = ']';
      final Range range19 = sheet.getRangeByName('A20');
      range19.text = '{';
      final Range range20 = sheet.getRangeByName('A21');
      range20.text = '[';
      final Range range21 = sheet.getRangeByIndex(22, 1);
      range21.text = '"';
      final Range range22 = sheet.getRangeByName('A23');
      range22.text = ':';
      final Range range23 = sheet.getRangeByIndex(24, 1);
      range23.text = ';';
      final Range range24 = sheet.getRangeByName('A25');
      range24.text = '?';
      final Range range25 = sheet.getRangeByIndex(26, 1);
      range25.text = '/';
      final Range range26 = sheet.getRangeByIndex(27, 1);
      range26.text = '>';
      final Range range27 = sheet.getRangeByName('A28');
      range27.text = '.';
      final Range range28 = sheet.getRangeByIndex(29, 1);
      range28.text = '<';
      final Range range29 = sheet.getRangeByName('A30');
      range29.text = ',';
      final Range range30 = sheet.getRangeByName('A31');
      range30.text = '`';
      final Range range31 = sheet.getRangeByName('A32');
      range31.text = '~';
      final Range range32 = sheet.getRangeByIndex(33, 1);
      range32.text = '=';
      final Range range33 = sheet.getRangeByName('A34');
      range33.text = '_';
      final Range range34 = sheet.getRangeByName('A35');
      range34.text = '0';
      final Range range35 = sheet.getRangeByIndex(36, 1);
      range35.text = '4';
      final Range range36 = sheet.getRangeByIndex(37, 1);
      range36.text = '44';
      final Range range37 = sheet.getRangeByName('A38');
      range37.text = '444';
      final Range range38 = sheet.getRangeByIndex(39, 1);
      range38.text = 'a';
      final Range range39 = sheet.getRangeByName('A40');
      range39.text = 'b';
      final Range range40 = sheet.getRangeByName('A41');
      range40.text = 'c';
      final Range range41 = sheet.getRangeByName('A42');
      range41.text = 'd';
      final Range range42 = sheet.getRangeByIndex(43, 1);
      range42.text = 'e';
      final Range range43 = sheet.getRangeByName('A44');
      range43.text = 'f';
      final Range range44 = sheet.getRangeByName('A45');
      range44.text = 'g';
      final Range range45 = sheet.getRangeByIndex(46, 1);
      range45.text = 'h';
      final Range range46 = sheet.getRangeByIndex(47, 1);
      range46.text = 'i';
      final Range range47 = sheet.getRangeByName('A48');
      range47.text = 'j';
      final Range range48 = sheet.getRangeByIndex(49, 1);
      range48.text = 'k';
      final Range range49 = sheet.getRangeByName('A50');
      range49.text = 'l';
      final Range range50 = sheet.getRangeByName('A51');
      range50.text = 'm';
      final Range range51 = sheet.getRangeByName('A52');
      range51.text = 'n';
      final Range range52 = sheet.getRangeByIndex(53, 1);
      range52.text = 'o';
      final Range range53 = sheet.getRangeByName('A54');
      range53.text = 'p';
      final Range range54 = sheet.getRangeByName('A55');
      range54.text = 'q';
      final Range range55 = sheet.getRangeByIndex(56, 1);
      range55.text = 'r';
      final Range range56 = sheet.getRangeByIndex(57, 1);
      range56.text = 's';
      final Range range57 = sheet.getRangeByName('A58');
      range57.text = 't';
      final Range range58 = sheet.getRangeByIndex(59, 1);
      range58.text = 'u';
      final Range range59 = sheet.getRangeByName('A60');
      range59.text = 'v';
      final Range range60 = sheet.getRangeByName('A61');
      range60.text = 'w';
      final Range range61 = sheet.getRangeByName('A62');
      range61.text = 'x';
      final Range range62 = sheet.getRangeByIndex(63, 1);
      range62.text = 'y';
      final Range range63 = sheet.getRangeByName('A64');
      range63.text = 'z';
      final Range range64 = sheet.getRangeByName('A65');
      range64.text = 'A';
      final Range range65 = sheet.getRangeByIndex(66, 1);
      range65.text = 'B';
      final Range range66 = sheet.getRangeByIndex(67, 1);
      range66.text = 'C';
      final Range range67 = sheet.getRangeByName('A68');
      range67.text = 'D';
      final Range range68 = sheet.getRangeByIndex(69, 1);
      range68.text = 'E';
      final Range range69 = sheet.getRangeByName('A70');
      range69.text = 'F';
      final Range range70 = sheet.getRangeByName('A71');
      range70.text = 'G';
      final Range range71 = sheet.getRangeByName('A72');
      range71.text = 'H';
      final Range range72 = sheet.getRangeByIndex(73, 1);
      range72.text = 'I';
      final Range range73 = sheet.getRangeByName('A74');
      range73.text = 'J';
      final Range range74 = sheet.getRangeByName('A75');
      range74.text = 'K';
      final Range range75 = sheet.getRangeByIndex(76, 1);
      range75.text = 'L';
      final Range range76 = sheet.getRangeByIndex(77, 1);
      range76.text = 'M';
      final Range range77 = sheet.getRangeByName('A78');
      range77.text = 'N';
      final Range range78 = sheet.getRangeByIndex(79, 1);
      range78.text = 'O';
      final Range range79 = sheet.getRangeByName('A80');
      range79.text = 'P';
      final Range range80 = sheet.getRangeByName('A81');
      range80.text = 'Q';
      final Range range81 = sheet.getRangeByName('A82');
      range81.text = 'R';
      final Range range82 = sheet.getRangeByIndex(83, 1);
      range82.text = 'S';
      final Range range83 = sheet.getRangeByName('A84');
      range83.text = 'T';
      final Range range84 = sheet.getRangeByName('A85');
      range84.text = 'U';
      final Range range85 = sheet.getRangeByIndex(86, 1);
      range85.text = 'V';
      final Range range86 = sheet.getRangeByIndex(87, 1);
      range86.text = 'W';
      final Range range87 = sheet.getRangeByName('A88');
      range87.text = 'X';
      final Range range88 = sheet.getRangeByIndex(89, 1);
      range88.text = 'Y';
      final Range range89 = sheet.getRangeByName('A90');
      range89.text = 'Z';
      final Range range90 = sheet.getRangeByName('A91');
      range90.text = '0';
      final Range range91 = sheet.getRangeByName('A92');
      range91.text = '1';
      final Range range92 = sheet.getRangeByIndex(93, 1);
      range92.text = '2';
      final Range range93 = sheet.getRangeByName('A94');
      range93.text = '3';
      final Range range94 = sheet.getRangeByName('A95');
      range94.text = '4';
      final Range range95 = sheet.getRangeByIndex(96, 1);
      range95.text = '5';
      final Range range96 = sheet.getRangeByIndex(97, 1);
      range96.text = '6';
      final Range range97 = sheet.getRangeByName('A98');
      range97.text = '7';
      final Range range98 = sheet.getRangeByIndex(99, 1);
      range98.text = '8';
      final Range range99 = sheet.getRangeByName('A100');
      range99.text = '9';
      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelTextWithAllPossibilities.xlsx');
      workbook.dispose();
    });
    test('get() for Multiple range', () {
      final Workbook workbook = Workbook();
      final Worksheet sheet = workbook.worksheets[0];

      // Multiple final Range for Number
      final Range range = sheet.getRangeByName('A1:A4');
      range.setNumber(10);
      expect(range.number, 10);
      expect(sheet.getRangeByName('A1:B5').number.toString(),
          double.nan.toString());
      expect(sheet.getRangeByName('B1:B5').number.toString(),
          double.nan.toString());

      // Multiple final Range for Text
      final Range range1 = sheet.getRangeByName('C1:C4');
      range1.setText('Hello World');
      expect(range1.text, 'Hello World');
      expect(sheet.getRangeByName('C1:C5').text, null);

      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'ExcelGetRangeForMultipleRange.xlsx');
      workbook.dispose();
    });
    test('Adding rows and columns', () {
      final Workbook workbook = Workbook();
      final Worksheet sheet = workbook.worksheets[0];
      Row row = sheet.rows.add();
      Range range = row.ranges.add();
      range.setText('a1');
      range = row.ranges.add();
      range.setText('b1');
      row = sheet.rows.add();
      range = row.ranges.add();
      range.setText('a2');
      range = row.ranges.add();
      range.setText('b2');

      sheet.getRangeByName('B2').setText('B2');

      Column col = sheet.columns.add();
      col.width = 30;
      col = sheet.columns.add();
      col.width = 30;

      final List<int> bytes = workbook.saveAsStream();
      saveAsExcel(bytes, 'Excel.xlsx');
      workbook.dispose();
    });
  });
}
