//
//  ViewController.h
//  UnitedFan
//
//  Created by Kiddi on 05/04/14.
//
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <iAd/iAd.h>
#import "GADBannerView.h"

//Constants
int MoyesFlight;
int RandomWinPosition;
int RandomWin2Position;
int RandomWin3Position;
int RandomWin4Position;
int RandomWin5Position;
int RandomWin6Position;
int RandomWin7Position;
int RandomWin8Position;
int x = 3;
int HighScore;
int totalscore;
BOOL Start;
BOOL song;
int timer = 2;
BOOL iphone5 = YES;
BOOL FewerWins = NO;
CGSize result;
int speedUp = 1;
int hit = 1;

//Coordinats Constants
BOOL iPAD = NO;
int RandomScreen = 445;
int Begin = 340;
int Top = 110;
int NewWin = -20;
int Addon = 12;
int Drop = 2;
int xMoyes = 40;
int yMoyes = 250;
int topLimit = 90;
int bottomLimit = 545;

//TEST
//int test = 0;




@interface ViewController : UIViewController <ADBannerViewDelegate, GADBannerViewDelegate>

{
    AVAudioPlayer *audioPlayer;
    IBOutlet UIImageView *Moyes;
    IBOutlet UIImageView *Win;
    IBOutlet UIImageView *Win2;
    IBOutlet UIImageView *Win3;
    IBOutlet UIImageView *Win4;
    IBOutlet UIImageView *Win5;
    IBOutlet UIImageView *Win6;
    IBOutlet UIImageView *Win7;
    IBOutlet UIImageView *Win8;
    IBOutlet UIImageView *WelcomeMoyes;
    IBOutlet UIImageView *WelcomeWin;
    IBOutlet UILabel *Score;
    IBOutlet UILabel *HighScoretext;
    IBOutlet UILabel *Intro1;
    IBOutlet UILabel *Intro2;
    IBOutlet UILabel *Intro3;
    IBOutlet UILabel *Texti;
    IBOutlet UILabel *Timi;
    IBOutlet UILabel *Instructions;
    IBOutlet UILabel *Texti2;
    
    
    
    NSTimer *MoyesMovement;
    NSTimer *WinMovement;
    NSTimer *Scorer;
    
    
}

-(void)MoyesMove;
-(void)MoveWin;

-(void)MakeWin;
-(void)MakeWin2;
-(void)MakeWin3;
-(void)MakeWin4;
-(void)MakeWin5;
-(void)MakeWin6;
-(void)MakeWin7;
-(void)MakeWin8;

-(void)Collision;
-(void)EndGame;
-(void)NewGame;
-(void)Scoring;
-(void)backGround;
-(void)crash;
-(void)Game;
-(void)Counter;
-(void)themeSong;

@property (nonatomic, strong) ADBannerView *bannerView;
@property (nonatomic, strong) GADBannerView *admobBannerView;

@end

