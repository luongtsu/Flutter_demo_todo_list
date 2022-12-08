/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/checklist.png
  AssetGenImage get checklist =>
      const AssetGenImage('assets/images/checklist.png');

  /// File path: assets/images/daily_routine.png
  AssetGenImage get dailyRoutine =>
      const AssetGenImage('assets/images/daily_routine.png');

  /// File path: assets/images/google_icon.png
  AssetGenImage get googleIcon =>
      const AssetGenImage('assets/images/google_icon.png');

  /// File path: assets/images/manage_task.png
  AssetGenImage get manageTask =>
      const AssetGenImage('assets/images/manage_task.png');

  /// File path: assets/images/missfortune.png
  AssetGenImage get missfortune =>
      const AssetGenImage('assets/images/missfortune.png');

  /// File path: assets/images/organize_task.png
  AssetGenImage get organizeTask =>
      const AssetGenImage('assets/images/organize_task.png');

  /// File path: assets/images/todo_icon.png
  AssetGenImage get todoIcon =>
      const AssetGenImage('assets/images/todo_icon.png');

  /// File path: assets/images/whitehair.png
  AssetGenImage get whitehair =>
      const AssetGenImage('assets/images/whitehair.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        checklist,
        dailyRoutine,
        googleIcon,
        manageTask,
        missfortune,
        organizeTask,
        todoIcon,
        whitehair
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
