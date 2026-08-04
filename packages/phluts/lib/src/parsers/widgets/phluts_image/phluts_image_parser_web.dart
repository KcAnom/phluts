import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phluts/phluts.dart';
import 'package:phluts_logger/phluts_logger.dart';

class PhlutsImageParser extends PhlutsParser<PhlutsImage> {
  const PhlutsImageParser();

  @override
  String get type => WidgetType.image.name;

  @override
  PhlutsImage getModel(Map<String, dynamic> json) => PhlutsImage.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsImage model) {
    switch (model.imageType) {
      case PhlutsImageType.network:
        return _networkImage(model, context);
      case PhlutsImageType.file:
        Log.w("PhlutsImageParser: File image not supported on web");
        return const SizedBox();
      case PhlutsImageType.asset:
        return _assetImage(model, context);
      default:
        return _networkImage(model, context);
    }
  }

  Widget _networkImage(PhlutsImage model, BuildContext context) {
    if (model.src.contains(".svg")) {
      return SvgPicture.network(
        model.src,
        alignment: model.alignment?.parse ?? Alignment.center,
        colorFilter: model.color != null
            ? ColorFilter.mode(model.color.toColor(context)!, BlendMode.srcIn)
            : null,
        width: model.width,
        height: model.height,
        fit: model.fit?.parse ?? BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
    } else {
      return Image.network(
        model.src,
        alignment: model.alignment?.parse ?? Alignment.center,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit?.parse,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
    }
  }

  Widget _assetImage(PhlutsImage model, BuildContext context) {
    if (!model.src.endsWith(".svg")) {
      return Image.asset(
        model.src,
        alignment: model.alignment?.parse ?? Alignment.center,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit?.parse,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
    } else {
      return SvgPicture.asset(
        model.src,
        alignment: model.alignment?.parse ?? Alignment.center,
        colorFilter: model.color != null
            ? ColorFilter.mode(model.color.toColor(context)!, BlendMode.srcIn)
            : null,
        width: model.width,
        height: model.height,
        fit: model.fit?.parse ?? BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
    }
  }
}
