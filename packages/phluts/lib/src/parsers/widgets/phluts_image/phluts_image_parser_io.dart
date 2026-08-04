import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phluts/phluts.dart';

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
        return _fileImage(model, context);
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
      return CachedNetworkImage(
        imageUrl: model.src,
        alignment: model.alignment?.parse ?? Alignment.center,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit?.parse ?? BoxFit.contain,
        errorWidget: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
    }
  }

  Widget _fileImage(PhlutsImage model, BuildContext context) {
    if (!model.src.contains(".svg")) {
      return Image.file(
        File(model.src),
        alignment: model.alignment?.parse ?? Alignment.center,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit?.parse ?? BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
    } else {
      return SvgPicture.file(
        File(model.src),
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

  Widget _assetImage(PhlutsImage model, BuildContext context) {
    if (!model.src.endsWith(".svg")) {
      return Image.asset(
        model.src,
        alignment: model.alignment?.parse ?? Alignment.center,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit?.parse ?? BoxFit.contain,
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
