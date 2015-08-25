//
//  Box.m
//  Boxes
//
//  Created by Alp Eren Can on 25/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype)initWithHeight:(float)aHeight Width:(float)aWidth Depth:(float)aDepth {
    self = [super init];
    
    if (self) {
        self.height = aHeight;
        self.width = aWidth;
        self.depth = aDepth;
    }
    
    return self;
}

-(float)volume {
    return self.height * self.width * self.depth;
}

@end
