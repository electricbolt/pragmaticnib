// CustomObjCView.m
// Copyright (c) 2017; Electric Bolt Limited.

#import "CustomObjCView.h"

@implementation CustomObjCView

- (instancetype) init {
    NSLog(@"   CustomObjCView.init");
    return [self initWithFrame: CGRectZero];
}

// You can safely ignore the warning: "Designated initializer missing a 'super' call to a designated initializer of the super class".
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
- (instancetype) initWithFrame: (CGRect) frame {
    NSLog(@"   CustomObjCView.initWithFrame:");
    self = [[[NSBundle mainBundle] loadNibNamed: @"CustomObjCView" owner: nil options: nil] objectAtIndex: 0];
    if (self) {
        self.frame = frame;
    }
    return self;
}
#pragma clang diagnostic pop

- (instancetype) initWithCoder: (NSCoder*) aDecoder {
    NSLog(@"   CustomObjCView.initWithCoder:");
    return [super initWithCoder: aDecoder];
}

- (void) awakeFromNib {
    [super awakeFromNib];
    NSLog(@"   CustomObjCView.awakeFromNib");
}

@end
