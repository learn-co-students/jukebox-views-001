//
//  FISJukeboxViewController.h
//  JukeboxViews
//
//  Created by John Richardson on 6/1/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISPlaylist.h"

@interface FISJukeboxViewController : UIViewController

@property (nonatomic) FISPlaylist *playlist;
@property (weak, nonatomic) IBOutlet UITextField *songField;
@property (weak, nonatomic) IBOutlet UITextView *songs;

- (IBAction)stop:(id)sender;
- (IBAction)play:(id)sender;
- (IBAction)title:(id)sender;
- (IBAction)artist:(id)sender;
- (IBAction)album:(id)sender;

@end
