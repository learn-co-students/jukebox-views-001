//
//  FISSong.m
//  JukeboxViews
//
//  Created by Joshua Motley on 8/24/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISSong.h"

@implementation FISSong

-(FISSong *)initWithTitle:(NSString *)title artist:(NSString *)artist album:(NSString *)album andFileName:(NSString *)filename
{
    self = [super init];
        if(self){
          _title = title;
          _artist = artist;
          _album = album;
            _fileName = filename;}
       return self;
    };

-(instancetype)init{
    return [self initWithTitle:@"" artist:@"" album:@"" andFileName:@""];}



@end
