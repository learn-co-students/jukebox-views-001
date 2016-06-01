//
//  FISPlaylist.m
//  JukeboxViews
//
//  Created by John Richardson on 5/31/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISPlaylist.h"

@interface FISPlaylist()

- (NSMutableArray *)generateSongObjects;
- (NSString *)setTextForSongs;

@end


@implementation FISPlaylist

- (void)sortSongsByTitle {

}

- (void)sortSongsByArtist {

}

- (void)sortSongsByAlbum {

}

- (FISSong *)songForTrackNumber:(NSUInteger)number {
    return nil;
}

- (NSMutableArray *)generateSongObjects {
    NSMutableArray *songs = [[NSMutableArray alloc] init];

    [songs addObject:[[FISSong alloc] initWithTitle:@"Hold on Be Strong"
                                             artist:@"Matoma vs Big Poppa"
                                              album:@"The Internet 1"
                                           fileName:@"hold_on_be_strong"] ];

    [songs addObject:[[FISSong alloc] initWithTitle:@"Higher Love"
                                             artist:@"Matoma ft. James Vincent McMorrow"
                                              album:@"The Internet 2"
                                           fileName:@"higher_love"] ];

    [songs addObject:[[FISSong alloc] initWithTitle:@"Mo Money Mo Problems"
                                             artist:@"Matoma ft. The Notorious B.I.G."
                                              album:@"The Internet 3"
                                           fileName:@"mo_money_mo_problems"] ];

    [songs addObject:[[FISSong alloc] initWithTitle:@"Old Thing Back"
                                             artist:@"The Notorious B.I.G."
                                              album:@"The Internet 4"
                                           fileName:@"old_thing_back"] ];

    [songs addObject:[[FISSong alloc] initWithTitle:@"Gangsta Bleeding Love"
                                             artist:@"Matoma"
                                              album:@"The Internet 5"
                                           fileName:@"gangsta_bleeding_love"] ];

    [songs addObject:[[FISSong alloc] initWithTitle:@"Bailando"
                                             artist:@"Enrique Iglesias ft. Sean Paul"
                                              album:@"The Internet 6"
                                           fileName:@"bailando"] ];

    return songs;
}

- (instancetype)init {
    self = [super init];
    self.songs = [self generateSongObjects];
    self.text = [self setTextForSongs];
    return self;
}

- (NSString *)setTextForSongs {
    NSString *songList = @"";
    NSUInteger i = 1;
    for(FISSong *song in self.songs) {
        NSString *songText = [NSString stringWithFormat:@"%lu. ", i];
        songText = [songText stringByAppendingFormat:@"(Title) %@ ", song.title];
        songText = [songText stringByAppendingFormat:@"(Artist) %@ ", song.artist];
        songText = [songText stringByAppendingFormat:@"(Album) %@\n", song.album];
        songList = [songList stringByAppendingString:songText];
        i++;
    }
    return songList;
}

@end
