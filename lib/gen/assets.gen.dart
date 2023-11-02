/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/category.svg
  SvgGenImage get category => const SvgGenImage('assets/icons/category.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/icon_back_ios.svg
  SvgGenImage get iconBackIos =>
      const SvgGenImage('assets/icons/icon_back_ios.svg');

  /// File path: assets/icons/icon_edit.svg
  SvgGenImage get iconEdit => const SvgGenImage('assets/icons/icon_edit.svg');

  /// File path: assets/icons/icon_email.svg
  SvgGenImage get iconEmail => const SvgGenImage('assets/icons/icon_email.svg');

  /// File path: assets/icons/icon_facebook.svg
  SvgGenImage get iconFacebook =>
      const SvgGenImage('assets/icons/icon_facebook.svg');

  /// File path: assets/icons/icon_google.svg
  SvgGenImage get iconGoogle =>
      const SvgGenImage('assets/icons/icon_google.svg');

  /// File path: assets/icons/icon_hide_password.svg
  SvgGenImage get iconHidePassword =>
      const SvgGenImage('assets/icons/icon_hide_password.svg');

  /// File path: assets/icons/icon_lock.svg
  SvgGenImage get iconLock => const SvgGenImage('assets/icons/icon_lock.svg');

  /// File path: assets/icons/icon_phone.svg
  SvgGenImage get iconPhone => const SvgGenImage('assets/icons/icon_phone.svg');

  /// File path: assets/icons/icon_show_password.svg
  SvgGenImage get iconShowPassword =>
      const SvgGenImage('assets/icons/icon_show_password.svg');

  /// File path: assets/icons/icon_user copy.svg
  SvgGenImage get iconUserCopy =>
      const SvgGenImage('assets/icons/icon_user copy.svg');

  /// File path: assets/icons/icon_user.svg
  SvgGenImage get iconUser => const SvgGenImage('assets/icons/icon_user.svg');

  /// File path: assets/icons/message.svg
  SvgGenImage get message => const SvgGenImage('assets/icons/message.svg');

  /// File path: assets/icons/time.svg
  SvgGenImage get time => const SvgGenImage('assets/icons/time.svg');

  /// File path: assets/icons/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/user.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        category,
        home,
        iconBackIos,
        iconEdit,
        iconEmail,
        iconFacebook,
        iconGoogle,
        iconHidePassword,
        iconLock,
        iconPhone,
        iconShowPassword,
        iconUserCopy,
        iconUser,
        message,
        time,
        user
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/chatbot.png
  AssetGenImage get chatbot => const AssetGenImage('assets/images/chatbot.png');

  /// File path: assets/images/icon_error.png
  AssetGenImage get iconError =>
      const AssetGenImage('assets/images/icon_error.png');

  /// File path: assets/images/mobile_phone.png.png
  AssetGenImage get mobilePhonePng =>
      const AssetGenImage('assets/images/mobile_phone.png.png');

  /// List of all assets
  List<AssetGenImage> get values => [chatbot, iconError, mobilePhonePng];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
