#import "GalleryInAppPlugin.h"
#if __has_include(<gallery_in_app/gallery_in_app-Swift.h>)
#import <gallery_in_app/gallery_in_app-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "gallery_in_app-Swift.h"
#endif

@implementation GalleryInAppPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGalleryInAppPlugin registerWithRegistrar:registrar];
}
@end
