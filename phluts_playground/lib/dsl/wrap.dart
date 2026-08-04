import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'wrap')
PhlutsWidget wrapExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Wrap Demo')),
      body: PhlutsCenter(
          child: PhlutsWrap(spacing: 8, runSpacing: 4, children: [
        PhlutsContainer(
            color: '#FFCDD2',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '1', style: PhlutsTextStyle(color: '#FFFFFF')))),
        PhlutsContainer(
            color: '#F8BBD0',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '2', style: PhlutsTextStyle(color: '#FFFFFF')))),
        PhlutsContainer(
            color: '#E1BEE7',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '3', style: PhlutsTextStyle(color: '#FFFFFF')))),
        PhlutsContainer(
            color: '#D1C4E9',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '4', style: PhlutsTextStyle(color: '#FFFFFF')))),
        PhlutsContainer(
            color: '#C5CAE9',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '5', style: PhlutsTextStyle(color: '#FFFFFF')))),
        PhlutsContainer(
            color: '#BBDEFB',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '6', style: PhlutsTextStyle(color: '#FFFFFF')))),
        PhlutsContainer(
            color: '#B3E5FC',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '7', style: PhlutsTextStyle(color: '#FFFFFF')))),
        PhlutsContainer(
            color: '#B2EBF2',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '8', style: PhlutsTextStyle(color: '#FFFFFF')))),
        PhlutsContainer(
            color: '#B2DFDB',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '9', style: PhlutsTextStyle(color: '#FFFFFF')))),
        PhlutsContainer(
            color: '#C8E6C9',
            width: 100,
            height: 100,
            child: PhlutsCenter(
                child: PhlutsText(
                    data: '10', style: PhlutsTextStyle(color: '#FFFFFF'))))
      ])));
}
