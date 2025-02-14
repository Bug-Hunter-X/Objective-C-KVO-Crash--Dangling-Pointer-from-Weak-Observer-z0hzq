// FixedKVO.m
#import "FixedKVO.h"

@interface MyObservedObject : NSObject
@property (nonatomic, strong) NSString *observedProperty;
@end

@implementation MyObservedObject
- (void)dealloc {
    [self removeObserver:self forKeyPath:@