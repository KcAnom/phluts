import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'card')
PhlutsWidget cardExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Cards')),
    body: PhlutsColumn(
      mainAxisAlignment: PhlutsMainAxisAlignment.start,
      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
      children: [
        PhlutsSizedBox(height: 12),
        PhlutsCard(
          elevation: 20,
          borderOnForeground: true,
          margin:
              PhlutsEdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
          child: PhlutsListTile(
            leading: PhlutsImage(
              src:
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              width: 50,
              height: 50,
            ),
            title: PhlutsPadding(
              padding: PhlutsEdgeInsets.only(top: 10),
              child: PhlutsText(
                data: 'Prof. Richard Jhonson',
                style: PhlutsTextStyle(fontSize: 21),
              ),
            ),
            subtitle: PhlutsPadding(
              padding: PhlutsEdgeInsets.only(top: 10, bottom: 10),
              child: PhlutsText(
                data:
                    'Head of Department of Computer Science, The New York University Campus, Abu Dhabi, United Arab Emirates.',
                style: PhlutsTextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
