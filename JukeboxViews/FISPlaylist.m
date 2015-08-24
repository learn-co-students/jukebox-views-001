//
//  Playlist.m
//  JukeboxViews
//
//  Created by Joshua Motley on 8/23/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISPlaylist.h"

@implementation FISPlaylist



-(instancetype)init{
    self = [super init];
    if (self) {
        _songs = [[NSMutableArray alloc]init];
    
    }
    return self;
}

-(void)sortSongsByTitle{
    NSSortDescriptor *byTitle = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    NSSortDescriptor *byArtist = [NSSortDescriptor sortDescriptorWithKey:@"artist" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObjects:byTitle, byArtist, nil];
    NSArray *sortedArray = [self.songs sortedArrayUsingDescriptors:sortDescriptors];
    self.songs = [sortedArray mutableCopy];
    
};
-(void)sortSongsByArtist{
     NSSortDescriptor *byArtist = [NSSortDescriptor sortDescriptorWithKey:@"artist" ascending:YES];
     NSSortDescriptor *byAlbum = [NSSortDescriptor sortDescriptorWithKey:@"album" ascending:YES];
    NSSortDescriptor *byTitle = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObjects:byArtist, byAlbum, byTitle, nil];
    NSArray *sortedArray = [self.songs sortedArrayUsingDescriptors:sortDescriptors];
    self.songs = [sortedArray mutableCopy];
 
    
};
-(void)sortSongsByAlbum{
    NSSortDescriptor *byAlbum = [NSSortDescriptor sortDescriptorWithKey:@"album" ascending:YES];
    NSSortDescriptor *byTitle = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObjects:byAlbum, byTitle, nil];
    NSArray *sortedArray = [self.songs sortedArrayUsingDescriptors:sortDescriptors];
    self.songs = [sortedArray mutableCopy];
};
-(NSString *)description{
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    for (int i =0; i<[self.songs count]; i++) {
       NSString *currentTitle = [[self.songs objectAtIndex:i]title];
        NSString *currentArtist = [[self.songs objectAtIndex:i]artist];
        NSString *currentAlbum = [[self.songs objectAtIndex:i]album];
        

            if ([currentTitle isKindOfClass:[NSNull class]])
            {
                currentTitle = @"";
            }
            
            if ([currentArtist isKindOfClass:[NSNull class]])
            {
                currentArtist = @"";
            }
            
            if ([currentAlbum isKindOfClass:[NSNull class]])
            {
                currentAlbum = @"";
            }
            
        NSString *intString = [NSString stringWithFormat:@"%d", i +1];
        NSString *songString = [NSString stringWithFormat:@"%@. Title: %@ Artist: %@ Album: %@", intString,currentTitle, currentArtist, currentAlbum];
        
        
        [array addObject:songString];
        
    }
    
    return [array description];


};
-(FISSong *)songAtPosition:(NSNumber *)position{
      NSInteger i = [position integerValue] - 1;
    
    if(i > [self.songs count] || i <0){
        return nil;
    }else{
    
  
    FISSong *song = [self.songs objectAtIndex:i];
    
        return song;}};

-(void)addObject{
    [self.songs addObjectsFromArray:[NSArray array]];
}





@end
