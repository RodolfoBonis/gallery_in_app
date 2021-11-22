import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class GalleryInApp extends StatelessWidget {
  const GalleryInApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String viewType = 'com.rodolfodebonis.gallery_in_app/gallery_in_app';
    final Map<String, dynamic> creationParams = <String, dynamic>{};

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return AndroidView(
          viewType: viewType,
          layoutDirection: TextDirection.ltr,
          creationParams: creationParams,
          creationParamsCodec: const StandardMessageCodec(),
        );
      case TargetPlatform.iOS:
        return UiKitView(
          viewType: viewType,
          layoutDirection: TextDirection.ltr,
          creationParams: creationParams,
          creationParamsCodec: const StandardMessageCodec(),
        );
      default:
        throw UnsupportedError("Unsupported platform view");
    }
  }
}
