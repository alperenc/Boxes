//
//  main.m
//  Boxes
//
//  Created by Alp Eren Can on 25/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box = [[Box alloc] initWithHeight:10.0 width:10.0 depth:10.0];
        NSLog(@"The volume of the box is %.2f", [box volume]);
        
        Box *otherBox = [[Box alloc] initWithHeight:5.0 width:5.0 depth:10.0];
        NSLog(@"The volume of the box is %.2f", [otherBox volume]);
        
        if ([box volume] > [otherBox volume]) {
            NSLog(@"The second box fits %d times inside the first one.", [box numberOfFitsInside:otherBox]);
        } else {
            NSLog(@"The first box fits %d times inside the second one.", [box numberOfFitsInside:otherBox]);
        }
        
    }
    return 0;
}
