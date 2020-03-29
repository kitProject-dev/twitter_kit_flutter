#import "TwitterKitPlugin.h"
#if __has_include(<twitter_kit/twitter_kit-Swift.h>)
#import <twitter_kit/twitter_kit-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "twitter_kit-Swift.h"
#endif

@implementation TwitterKitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTwitterKitPlugin registerWithRegistrar:registrar];
}
@end
