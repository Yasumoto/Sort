//
//  Sorter.m
//  Sort
//
//  Created by Joseph Smith on 5/5/15.
//  Copyright (c) 2015 bjoli.com. All rights reserved.
//

#import "Sorter.h"

@interface Sorter()

@property (nonatomic, strong) CodaPlugInsController *controller;

@end


@implementation Sorter

@synthesize controller = _controller;

- (id)initWithPlugInController:(CodaPlugInsController*)aController plugInBundle:(NSObject *)plugInBundle {
    [aController registerActionWithTitle:@"Sort" target:self selector:@selector(sort)];
    self.controller = aController;
    return self;
}

- (NSString*)name {
    return @"Sort";
}

- (void) sort {
    NSString *text = self.controller.focusedTextView.selectedText;
    NSArray *lines = [text componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    NSArray *sortedLines = [lines sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    [self.controller.focusedTextView replaceCharactersInRange:self.controller.focusedTextView.selectedRange withString:[sortedLines componentsJoinedByString:@"\n"]];
}

@end
