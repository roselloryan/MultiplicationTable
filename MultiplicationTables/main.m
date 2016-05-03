//
//  main.m
//  MultiplicationTables
//
//  Created by RYAN ROSELLO on 5/2/16.
//  Copyright © 2016 RYAN ROSELLO. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSInteger maxNumber = 12;
        NSInteger i = 0;
        NSInteger j = 0;
        NSInteger k = 0;
        NSInteger rows = 1;
        
        NSMutableString * solutionString = [[NSMutableString alloc]init];
        
        for (j = 1; j < maxNumber + 1;  j++) {

            for (i = 1; i < maxNumber + 1; i++) {
            
                NSString *intString = [NSString stringWithFormat:@"%lu",i * rows];
                NSString *spaceString = [NSString stringWithFormat:@" "];
                
                NSInteger numberOfSpacesToFormat = 4 - intString.length;
                
                if (i == 1) {
                    // one digit
                    if (i * rows < 10) {
                        [solutionString appendString:spaceString];
                        [solutionString appendString:intString];
                    }
                    // two digit
                    else if (i * rows < 100) {
                        [solutionString appendString:intString];
                    }
                }
                else {
                    for (k = 0; k < numberOfSpacesToFormat; k++) {
                        [solutionString appendString:spaceString];
                    }
                    [solutionString appendString:intString];
                }
            }
            [solutionString appendString:@"\n"];
            rows ++;
            
        }
        
        NSLog(@"\n%@\n", solutionString);
    }
    return 0;
}
