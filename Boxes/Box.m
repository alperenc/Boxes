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

-(int)numberOfFitsInside:(Box *)otherBox {
    int fits = 1;
    if (self.volume < otherBox.volume) {
        fits = otherBox.volume / self.volume;
        NSLog(@"The first box fits %d times inside the second.", fits);
    } else {
        fits = self.volume / otherBox.volume;
        NSLog(@"The second box fits %d times inside the first.", fits);
    }
    
    return fits;
}

@end
