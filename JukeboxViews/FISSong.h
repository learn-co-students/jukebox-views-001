//
//  FISSong.h
//  JukeboxViews
//
//  Created by John Richardson on 5/26/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISSong : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *artist;
@property (nonatomic) NSString *album;
@property (nonatomic) NSString *fileName;

- (instancetype)init;
- (instancetype)initWithTitle:(NSString *)title
                      artist:(NSString *)artist
                       album:(NSString *)album
                    fileName:(NSString *)fileName;

@end
