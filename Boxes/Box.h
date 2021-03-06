//
//  Box.h
//  Boxes
//
//  Created by Alp Eren Can on 25/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float depth;

-(instancetype)initWithHeight:(float)aHeight width:(float)aWidth depth:(float)aDepth;

-(float)volume;

-(int)numberOfFitsInside:(Box *)otherBox;

@end
