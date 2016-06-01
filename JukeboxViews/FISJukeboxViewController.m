//
//  FISJukeboxViewController.m
//  JukeboxViews
//
//  Created by John Richardson on 6/1/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISJukeboxViewController.h"

@implementation FISJukeboxViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.playlist = [[FISPlaylist alloc] init];
    self.songs.text = [self.playlist text];
}

@synthesize songField;

- (IBAction)stop:(id)sender {

}

- (IBAction)play:(id)sender {
    int intVal = [self.songField.text intValue];
    FISSong *song = [self.playlist songForTrackNumber:intVal];
    NSLog (@"(Title) %@ (Artist) %@ (Album) %@", song.title, song.artist, song.album);
}

- (IBAction)title:(id)sender {
    [self.playlist sortSongsByTitle];
    self.songs.text = [self.playlist text];
}

- (IBAction)artist:(id)sender {
    [self.playlist sortSongsByArtist];
    self.songs.text = [self.playlist text];
}

- (IBAction)album:(id)sender {
    [self.playlist sortSongsByAlbum];
    self.songs.text = [self.playlist text];
}

@end
