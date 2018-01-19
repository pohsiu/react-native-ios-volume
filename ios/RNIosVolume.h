
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif
#import <MediaPlayer/MPVolumeView.h>
#import <React/RCTEventEmitter.h>
#import <UIKit/UIKit.h>

@interface RNIosVolume : RCTEventEmitter <RCTBridgeModule>

@property (nonatomic, readonly) MPVolumeView *volumeView;
@property (nonatomic, readonly) UISlider *slider;
@end

  