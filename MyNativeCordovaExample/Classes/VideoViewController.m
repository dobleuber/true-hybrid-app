//
//  VideoViewController.m
//  MyNativeCordovaExample
//
//  Created by Wbert Adrian Castro Vera on 9/4/15.
//
//

#import <MediaPlayer/MediaPlayer.h>
#import "VideoViewController.h"
@implementation VideoViewController
@synthesize streamPlayer = _streamPlayer;

- (void)viewDidLoad {
    NSURL *streamURL = [NSURL URLWithString:@"http://www.quirksmode.org/html5/videos/big_buck_bunny.mp4"];
    _streamPlayer = [[MPMoviePlayerController alloc] initWithContentURL:streamURL];
    [self.streamPlayer.view setFrame: self.view.bounds ];
    self.streamPlayer.controlStyle = MPMovieControlStyleEmbedded;
    [self.view addSubview: self.streamPlayer.view];
    [self.streamPlayer play];
}

- (void)dealloc {
    // if non-ARC don't forget!
    // [_streamPlayer release];
    // [super dealloc];
}

@end