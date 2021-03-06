//
//  Player.m
//  JenkinsCI
//
//  Created by Ciprian Redinciuc on 17/10/14.
//  Copyright (c) 2014 Ciprian Redinciuc. All rights reserved.
//

#import "Player.h"
#import "Club.h"
#import <UIKit/UIKit.h>

@implementation Player

@dynamic firstName;
@dynamic lastName;
@dynamic position;
@dynamic playerId;
@dynamic shirtNumber;
@dynamic club;

@end

@implementation Player (Additions)


- (NSString *)playerFullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (UIImage *)playerImage {
    NSString *strippedName = [[[self playerFullName] lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    return [UIImage imageNamed:strippedName];
}


@end