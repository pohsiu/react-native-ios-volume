


#import <React/RCTBridgeModule.h>
#import <MediaPlayer/MPVolumeView.h>
#import <React/RCTEventEmitter.h>
#import <UIKit/UIKit.h>

@interface RNIosVolume : RCTEventEmitter <RCTBridgeModule>

@property (nonatomic, readonly) MPVolumeView *volumeView;
@property (nonatomic, readonly) UISlider *slider;
@end

  
