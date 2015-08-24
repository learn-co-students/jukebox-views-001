//
//  Playlist.h
//  JukeboxViews
//
//  Created by Joshua Motley on 8/23/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISSong.h"

@interface FISPlaylist : NSObject

@property (strong, nonatomic) NSMutableArray *songs;

-(void)sortSongsByTitle;
-(void)sortSongsByArtist;
-(void)sortSongsByAlbum;
-(NSString *)description;
-(FISSong *)songAtPosition:(NSNumber *)position;

-(void)addObject;


@end
