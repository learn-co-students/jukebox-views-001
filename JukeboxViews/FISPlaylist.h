//
//  FISPlaylist.h
//  JukeboxViews
//
//  Created by John Richardson on 5/31/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISSong.h"

@interface FISPlaylist : NSObject

@property (nonatomic) NSArray *songs;
@property (nonatomic) NSString *text;

- (void)sortSongsByTitle;
- (void)sortSongsByArtist;
- (void)sortSongsByAlbum;
- (FISSong *)songForTrackNumber:(NSUInteger)number;

@end
