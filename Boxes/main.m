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
        
        Box *box = [[Box alloc] initWithHeight:10.0 Width:10.0 Depth:10.0];
        box.name = @"Box 1";
        NSLog(@"The volume of the box is %.2f", [box volume]);
        
        Box *otherBox = [[Box alloc] initWithHeight:20.0 Width:20.0 Depth:10.0];
        otherBox.name = @"Box 2";
        NSLog(@"The volume of the box is %.2f", [otherBox volume]);
        
        NSLog(@"%@ fits %d times inside %@.", ([box volume] > [otherBox volume])? otherBox.name : box.name, [box numberOfFitsInside:otherBox], ([box volume] < [otherBox volume])? otherBox.name : box.name);
        
    }
    return 0;
}
