import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'dropdown_menu_view')
PhlutsWidget dropdownMenuViewExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Phluts DropDown')),
    body: PhlutsColumn(
      children: [
        PhlutsDropdownMenu(
          leadingIcon: PhlutsIcon(
            iconType: PhlutsIconType.material,
            icon: 'arrow_downward',
            size: 32,
          ),
          trailingIcon: PhlutsIcon(
            iconType: PhlutsIconType.material,
            icon: 'double_arrow',
            size: 32,
          ),
          initialSelection: 'b',
          dropdownMenuEntries: [
            PhlutsDropdownMenuEntry(
              label: 'A',
              value: 'a',
              leadingIcon: PhlutsIcon(
                iconType: PhlutsIconType.material,
                icon: 'arrow_downward_sharp',
                size: 32,
              ),
              trailingIcon: PhlutsIcon(
                iconType: PhlutsIconType.material,
                icon: 'arrow_forward_ios',
                size: 32,
              ),
            ),
            PhlutsDropdownMenuEntry(
              label: 'B',
              value: 'b',
              leadingIcon: PhlutsIcon(
                iconType: PhlutsIconType.material,
                icon: 'arrow_downward_sharp',
                size: 32,
              ),
              trailingIcon: PhlutsIcon(
                iconType: PhlutsIconType.material,
                icon: 'arrow_forward_ios',
                size: 32,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
