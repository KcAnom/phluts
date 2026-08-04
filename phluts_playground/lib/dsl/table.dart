import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'table')
PhlutsWidget tableExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Phluts Table Example')),
    body: PhlutsPadding(
      padding: PhlutsEdgeInsets.all(16.0),
      child: PhlutsTable(
        defaultColumnWidth: PhlutsTableColumnWidth(
          type: PhlutsTableColumnWidthType.flexColumnWidth,
          value: 1,
        ),
        border: PhlutsTableBorder(color: '#000000', width: 1.0),
        children: [
          PhlutsTableRow(
            children: [
              _headerCell('Header 1'),
              _headerCell('Header 2'),
              _headerCell('Header 3'),
            ],
          ),
          PhlutsTableRow(
            children: [
              _bodyCell('Row 1, Cell 1'),
              _bodyCell('Row 1, Cell 2'),
              _bodyCell('Row 1, Cell 3'),
            ],
          ),
          PhlutsTableRow(
            children: [
              _bodyCell('Row 2, Cell 1'),
              _bodyCell('Row 2, Cell 2'),
              _bodyCell('Row 2, Cell 3'),
            ],
          ),
          PhlutsTableRow(
            children: [
              _bodyCell('Row 3, Cell 1'),
              _bodyCell('Row 3, Cell 2'),
              _bodyCell('Row 3, Cell 3'),
            ],
          ),
        ],
      ),
    ),
  );
}

PhlutsWidget _headerCell(String data) {
  return PhlutsTableCell(
    child: PhlutsContainer(
      color: '#40000000',
      height: 50.0,
      child: PhlutsCenter(child: PhlutsText(data: data)),
    ),
  );
}

PhlutsWidget _bodyCell(String data) {
  return PhlutsTableCell(
    child: PhlutsSizedBox(
      height: 50.0,
      child: PhlutsCenter(child: PhlutsText(data: data)),
    ),
  );
}
