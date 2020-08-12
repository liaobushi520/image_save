#import "ImageSavePlugin.h"
#if __has_include(<image_save/image_save-Swift.h>)
#import <image_save/image_save-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "image_save-Swift.h"
#endif

@implementation ImageSavePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftImageSavePlugin registerWithRegistrar:registrar];
}
@end
