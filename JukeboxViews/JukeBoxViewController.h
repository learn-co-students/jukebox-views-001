//
//  JukeBoxViewController.h
//  JukeboxViews
//
//  Created by Joshua Motley on 8/23/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISPlaylist.h"
#import "FISSong.h"
#import <AVFoundation/AVFoundation.h>

@interface JukeBoxViewController : UIViewController

- (IBAction)playSong:(id)sender;
- (IBAction)stopSong:(id)sender;
- (IBAction)sortByTitle:(id)sender;
- (IBAction)sortByArtist:(id)sender;
- (IBAction)sortByAlbum:(id)sender;


@property (strong, nonatomic) FISPlaylist *playlist;
@property (weak, nonatomic) IBOutlet UITextView *currentList;
@property (weak, nonatomic) IBOutlet UITextField *whichSong;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

- (void)setupAVAudioPlayWithFileName:(NSString *)fileName;


@end
