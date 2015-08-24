//
//  JukeBoxViewController.m
//  JukeboxViews
//
//  Created by Joshua Motley on 8/23/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "JukeBoxViewController.h"


@interface JukeBoxViewController ()

@end

@implementation JukeBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISSong *song = [[FISSong alloc]initWithTitle:@"Karaoke" artist:@"Drake" album:@"Thank Me Later" andFileName:@"Karaoke"];
    FISSong *songTwo = [[FISSong alloc]initWithTitle:@"Truth" artist:@"Chiddy Bang" album:@"Single" andFileName:@"Truth"];
    FISPlaylist *playlist = [[FISPlaylist alloc]init];
    [playlist.songs addObjectsFromArray:@[song, songTwo]];
    self.playlist = playlist;
    self.currentList.text = [[[[self.playlist description]stringByReplacingOccurrencesOfString:@"(" withString:@""]stringByReplacingOccurrencesOfString:@")" withString:@""]stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    

                             
            // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)playSong:(id)sender {
    
          NSInteger integer = [self.whichSong.text integerValue];
    NSNumber *number = [NSNumber numberWithInteger:integer];
    NSLog(@"Song at position:%@", number);
    FISSong *song = [self.playlist songAtPosition:number];
    [self setupAVAudioPlayWithFileName:song.fileName];
     [self.audioPlayer play];
    
}

- (IBAction)stopSong:(id)sender {
    [self.audioPlayer stop];
    
}

- (IBAction)sortByTitle:(id)sender {
    [self.playlist sortSongsByTitle];
    NSString *string = [[[[self.playlist description]stringByReplacingOccurrencesOfString:@"(" withString:@""]stringByReplacingOccurrencesOfString:@")" withString:@""]stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    self.currentList.text = string;
    
}

- (IBAction)sortByArtist:(id)sender {
    [self.playlist sortSongsByArtist];
    NSString *string = [[[[self.playlist description]stringByReplacingOccurrencesOfString:@"(" withString:@""]stringByReplacingOccurrencesOfString:@")" withString:@""]stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    self.currentList.text = string;
}

- (IBAction)sortByAlbum:(id)sender {
    [self.playlist sortSongsByAlbum];
    NSString *string = [[[[self.playlist description]stringByReplacingOccurrencesOfString:@"(" withString:@""]stringByReplacingOccurrencesOfString:@")" withString:@""]stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    self.currentList.text = string;
}

- (void)setupAVAudioPlayWithFileName:(NSString *)fileName
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:fileName
                                         ofType:@"mp3"]];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc]
                        initWithContentsOfURL:url
                        error:&error];
    if (error)
    {
        NSLog(@"Error in audioPlayer: %@",
              [error localizedDescription]);
    } else {
        [self.audioPlayer prepareToPlay];
    }
}
@end
