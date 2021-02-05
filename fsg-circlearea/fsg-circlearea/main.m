//
//  main.m
//  fsg-circlearea
//  Objective:
//  Create an objective-c class named Circle with fields named radius, area, and diameter. Define set and get  methods for radius. Write a computeArea method that calculates (and stores) a circle's area using the             radius (3.14 * r * r). Write a computeDiameter method that calculates (and stores) a circle's diameter            using the radius (2*r). Test in a program using the scanf function to get a radius value from the user            and using the methods you created to calculate and display the area and diameter of the circle.
//  Created by Felipe S.G. on 2021-02-04.
//  Copyright © 2021 ca.nscc. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Circle: NSObject
-(float) computeDiameter;
-(float) computeArea;
-(void) setRadius: (float) n;
-(float) getRadius;
-(void) Display;
@end

@implementation Circle {
    float radius;
    float area;
    float diameter;
}
-(void) setRadius: (float) n
{
    radius = n;
}
-(float) getRadius
{
    return radius;
}
-(float) computeArea
{
    area = 3.14 * (radius * radius);
    
    return area;
}
-(float) computeDiameter
{
    diameter = 2 * radius;
    
    return diameter;
}
-(void) Display
{
    NSLog(@" The area of this circle is: %0.2f", [self computeArea]);
    NSLog(@" The diameter of this circle is: %0.2f", [self computeDiameter]);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Please insert the circle radius: ");
        float userInput;
        scanf("%f", &userInput);
        fflush(stdin);
        Circle *myCircle = [[Circle alloc] init];
        [myCircle setRadius: userInput];
        [myCircle Display];
       
    }
    return 0;
}
