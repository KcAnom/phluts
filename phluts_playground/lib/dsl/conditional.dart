import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'conditional')
PhlutsWidget conditionalExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Conditional Widget Example')),
    body: PhlutsSingleChildScrollView(
      child: PhlutsColumn(
        mainAxisAlignment: PhlutsMainAxisAlignment.center,
        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
        children: [
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data:
                  'Conditional Widgets allow you to render different UI based on conditions',
              textAlign: PhlutsTextAlign.center,
              style: PhlutsTextStyle(
                fontSize: 16,
                fontWeight: PhlutsFontWeight.w700,
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Example 1: Simple Boolean Comparison',
              style: PhlutsTextStyle(
                fontSize: 18,
                fontWeight: PhlutsFontWeight.w700,
              ),
            ),
          ),
          PhlutsConditional(
            condition: '5 > 3',
            ifTrue: PhlutsContainer(
              padding: PhlutsEdgeInsets.all(16),
              decoration: PhlutsBoxDecoration(
                color: '#E1F5FE',
                borderRadius: PhlutsBorderRadius.all(8),
              ),
              child: PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                children: [
                  PhlutsIcon(icon: 'check_circle', color: '#01579B'),
                  PhlutsSizedBox(width: 8),
                  PhlutsText(
                    data: 'Condition is TRUE: 5 is greater than 3',
                    style: PhlutsTextStyle(color: '#01579B'),
                  ),
                ],
              ),
            ),
            ifFalse: PhlutsContainer(
              padding: PhlutsEdgeInsets.all(16),
              decoration: PhlutsBoxDecoration(
                color: '#FFEBEE',
                borderRadius: PhlutsBorderRadius.all(8),
              ),
              child: PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                children: [
                  PhlutsIcon(icon: 'cancel', color: '#B71C1C'),
                  PhlutsSizedBox(width: 8),
                  PhlutsText(
                    data: 'Condition is FALSE: 5 is not greater than 3',
                    style: PhlutsTextStyle(color: '#B71C1C'),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Example 2: String Comparison',
              style: PhlutsTextStyle(
                fontSize: 18,
                fontWeight: PhlutsFontWeight.w700,
              ),
            ),
          ),
          PhlutsConditional(
            condition: 'Flutter == Flutter',
            ifTrue: PhlutsContainer(
              padding: PhlutsEdgeInsets.all(16),
              decoration: PhlutsBoxDecoration(
                color: '#E8F5E9',
                borderRadius: PhlutsBorderRadius.all(8),
              ),
              child: PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                children: [
                  PhlutsIcon(icon: 'check_circle', color: '#1B5E20'),
                  PhlutsSizedBox(width: 8),
                  PhlutsText(
                    data: 'Strings are equal',
                    style: PhlutsTextStyle(color: '#1B5E20'),
                  ),
                ],
              ),
            ),
            ifFalse: PhlutsContainer(
              padding: PhlutsEdgeInsets.all(16),
              decoration: PhlutsBoxDecoration(
                color: '#FFEBEE',
                borderRadius: PhlutsBorderRadius.all(8),
              ),
              child: PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                children: [
                  PhlutsIcon(icon: 'cancel', color: '#B71C1C'),
                  PhlutsSizedBox(width: 8),
                  PhlutsText(
                    data: 'Strings are not equal',
                    style: PhlutsTextStyle(color: '#B71C1C'),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Example 3: Mathematical Expression',
              style: PhlutsTextStyle(
                fontSize: 18,
                fontWeight: PhlutsFontWeight.w700,
              ),
            ),
          ),
          PhlutsConditional(
            condition: '(10 + 5) * 2 == 30',
            ifTrue: PhlutsContainer(
              padding: PhlutsEdgeInsets.all(16),
              decoration: PhlutsBoxDecoration(
                color: '#E8F5E9',
                borderRadius: PhlutsBorderRadius.all(8),
              ),
              child: PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                children: [
                  PhlutsIcon(icon: 'check_circle', color: '#1B5E20'),
                  PhlutsSizedBox(width: 8),
                  PhlutsText(
                    data: '(10 + 5) * 2 equals 30',
                    style: PhlutsTextStyle(color: '#1B5E20'),
                  ),
                ],
              ),
            ),
            ifFalse: PhlutsContainer(
              padding: PhlutsEdgeInsets.all(16),
              decoration: PhlutsBoxDecoration(
                color: '#FFEBEE',
                borderRadius: PhlutsBorderRadius.all(8),
              ),
              child: PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                children: [
                  PhlutsIcon(icon: 'cancel', color: '#B71C1C'),
                  PhlutsSizedBox(width: 8),
                  PhlutsText(
                    data: '(10 + 5) * 2 does not equal 30',
                    style: PhlutsTextStyle(color: '#B71C1C'),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Example 4: Logical Operators',
              style: PhlutsTextStyle(
                fontSize: 18,
                fontWeight: PhlutsFontWeight.w700,
              ),
            ),
          ),
          PhlutsConditional(
            condition: 'true && (false || true)',
            ifTrue: PhlutsContainer(
              padding: PhlutsEdgeInsets.all(16),
              decoration: PhlutsBoxDecoration(
                color: '#E8F5E9',
                borderRadius: PhlutsBorderRadius.all(8),
              ),
              child: PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                children: [
                  PhlutsIcon(icon: 'check_circle', color: '#1B5E20'),
                  PhlutsSizedBox(width: 8),
                  PhlutsText(
                    data: 'Logical expression is TRUE',
                    style: PhlutsTextStyle(color: '#1B5E20'),
                  ),
                ],
              ),
            ),
            ifFalse: PhlutsContainer(
              padding: PhlutsEdgeInsets.all(16),
              decoration: PhlutsBoxDecoration(
                color: '#FFEBEE',
                borderRadius: PhlutsBorderRadius.all(8),
              ),
              child: PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                children: [
                  PhlutsIcon(icon: 'cancel', color: '#B71C1C'),
                  PhlutsSizedBox(width: 8),
                  PhlutsText(
                    data: 'Logical expression is FALSE',
                    style: PhlutsTextStyle(color: '#B71C1C'),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Example 5: Nested Conditionals',
              style: PhlutsTextStyle(
                fontSize: 18,
                fontWeight: PhlutsFontWeight.w700,
              ),
            ),
          ),
          PhlutsConditional(
            condition: '3 < 5',
            ifTrue: PhlutsConditional(
              condition: '10 > 8',
              ifTrue: PhlutsContainer(
                padding: PhlutsEdgeInsets.all(16),
                decoration: PhlutsBoxDecoration(
                  color: '#E1F5FE',
                  borderRadius: PhlutsBorderRadius.all(8),
                ),
                child: PhlutsText(
                  data: 'Both conditions are TRUE: 3 < 5 AND 10 > 8',
                  textAlign: PhlutsTextAlign.center,
                  style: PhlutsTextStyle(
                    color: '#01579B',
                    fontWeight: PhlutsFontWeight.w700,
                  ),
                ),
              ),
              ifFalse: PhlutsContainer(
                padding: PhlutsEdgeInsets.all(16),
                decoration: PhlutsBoxDecoration(
                  color: '#FFF3E0',
                  borderRadius: PhlutsBorderRadius.all(8),
                ),
                child: PhlutsText(
                  data: 'First condition is TRUE, but second is FALSE',
                  textAlign: PhlutsTextAlign.center,
                  style: PhlutsTextStyle(
                    color: '#E65100',
                    fontWeight: PhlutsFontWeight.w700,
                  ),
                ),
              ),
            ),
            ifFalse: PhlutsContainer(
              padding: PhlutsEdgeInsets.all(16),
              decoration: PhlutsBoxDecoration(
                color: '#FFEBEE',
                borderRadius: PhlutsBorderRadius.all(8),
              ),
              child: PhlutsText(
                data: 'First condition is FALSE',
                textAlign: PhlutsTextAlign.center,
                style: PhlutsTextStyle(
                  color: '#B71C1C',
                  fontWeight: PhlutsFontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
