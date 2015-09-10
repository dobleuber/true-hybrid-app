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
    NSURL *streamURL = [NSURL URLWithString:@"http://104.238.118.147:1935/vod/mp4:sample.mp4/playlist.m3u8"];
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon-50@2x.png"]];
    image.frame = CGRectMake(self.view.frame.size.width / 4, self.view.frame.size.height / 4, self.view.frame.size.width / 2, self.view.frame.size.height / 2);

    _streamPlayer = [[MPMoviePlayerController alloc] initWithContentURL:streamURL];
    [self.streamPlayer.view addSubview:image];
    [self.streamPlayer prepareToPlay];
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