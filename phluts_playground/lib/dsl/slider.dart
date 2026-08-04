import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'slider')
PhlutsWidget sliderExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Phluts Slider')),
    body: PhlutsForm(
      child: PhlutsCenter(
        child: PhlutsSlider(
          id: 'example_slider',
          sliderType: PhlutsSliderType.material,
          value: 20,
          max: 100,
          divisions: 5,
        ),
      ),
    ),
  );
}
