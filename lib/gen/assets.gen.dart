/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/A.png
  AssetGenImage get a => const AssetGenImage('assets/images/A.png');

  /// File path: assets/images/B.png
  AssetGenImage get b => const AssetGenImage('assets/images/B.png');

  /// File path: assets/images/down.json
  String get down => 'assets/images/down.json';

  /// File path: assets/images/easy.png
  AssetGenImage get easy => const AssetGenImage('assets/images/easy.png');

  /// File path: assets/images/hard.png
  AssetGenImage get hard => const AssetGenImage('assets/images/hard.png');

  /// File path: assets/images/medium.png
  AssetGenImage get medium => const AssetGenImage('assets/images/medium.png');

  /// File path: assets/images/tie.gif
  AssetGenImage get tie => const AssetGenImage('assets/images/tie.gif');

  /// File path: assets/images/win.gif
  AssetGenImage get win => const AssetGenImage('assets/images/win.gif');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
