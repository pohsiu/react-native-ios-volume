
#import "RNIosVolume.h"
#import <MediaPlayer/MPVolumeView.h>
#import <AVFoundation/AVFoundation.h>
@implementation RNIosVolume


RCT_EXPORT_MODULE();



- (id)init{
  if (self = [super init]) {
    _volumeView = [[MPVolumeView alloc] init];
  
  

    
    UISlider* slider = nil;
    for(UIView *subview in _volumeView.subviews){
      if([subview isKindOfClass:[UISlider class]]){
        slider = (UISlider*)subview;
        slider.continuous = false;
        slider.value = [AVAudioSession sharedInstance].outputVolume;
        [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
        _slider = slider;
      }
    }
  

  }
  
  return self;
}


- (NSArray<NSString *> *)supportedEvents
{
  return @[@"volumeChanged"];
  
}
RCT_EXPORT_METHOD(getVolume:(RCTResponseSenderBlock) callback){
  NSNumber *value = [NSNumber numberWithFloat:_slider.value];
  callback(@[value]);
}

RCT_EXPORT_METHOD(setVolume:(float) value)
{
  [_slider setValue:value];
  NSLog(@"%.2f",_slider.value);
}




- (void)sliderValueChanged:(UISlider *)sender {
  NSNumber *value = [NSNumber numberWithFloat:sender.value];

  [self sendEventWithName:@"volumeChanged" body:@{@"volume": value}];
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

@end
  
