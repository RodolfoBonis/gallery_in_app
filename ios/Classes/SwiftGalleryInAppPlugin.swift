import Flutter
import UIKit

public class SwiftGalleryInAppPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let factory = NativeViewFactory(messenger: registrar.messenger())
    let instance = SwiftGalleryInAppPlugin()
    registrar.register(factory, withId: "com.rodolfodebonis.gallery_in_app/gallery_in_app")
  }
}
