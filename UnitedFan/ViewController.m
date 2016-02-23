//
//  ViewController.m
//  UnitedFan
//
//  Created by Kiddi on 05/04/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)Scoring{
    
    totalscore = totalscore + 1;
    Score.text = [NSString stringWithFormat:@"%i", totalscore];
    
}


-(void)Counter{
    
    if (timer == 2){
        Timi.text = [NSString stringWithFormat:@"GET READY!"];
        [self performSelector:@selector(Counter) withObject:nil afterDelay:1];
        timer = 1;
    }
    else if (timer == 1){
        Timi.text = [NSString stringWithFormat:@"GO!"];
        [self performSelector:@selector(Counter) withObject:nil afterDelay:0.8];
        timer = 0;
    }
    else {
        Timi.hidden = YES;
        Instructions.hidden = YES;
    }
    
    
    
}

-(void)Game{
    
    WinMovement = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(MoveWin) userInfo:nil repeats:YES];
    
    MoyesMovement = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(MoyesMove)userInfo:nil repeats:YES];
    
    Scorer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Scoring) userInfo:nil repeats:YES];
    
}

-(void)EndGame{
    
    //    test = test + 1;
    //    if (test > 2){
    //
    //        [self adView:self.admobBannerView didFailToReceiveAdWithError:nil];
    //
    //    }
    //    if (test <= 2){
    //
    //        [self bannerView:self.bannerView didFailToReceiveAdWithError:nil];
    //
    //    }
    
    
    if (totalscore > HighScore){
        
        HighScore = totalscore;
        [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScoreSaved"];
        
    }
    
    [WinMovement invalidate];
    [Scorer invalidate];
    [MoyesMovement invalidate];
    song = NO;
    if (hit == 3) {
        
        Texti.text = [NSString stringWithFormat:@"Fans can't fly!"];
        Texti2.text = [NSString stringWithFormat:@"Try again!"];
        
    }
    
    else if (hit == 2) {
        
        Texti.text = [NSString stringWithFormat:@"Ooops, you're not a Mole!"];
        Texti2.text = [NSString stringWithFormat:@"Try again!"];
        
    }
    
    else {
        
        Texti.text = [NSString stringWithFormat:@"No trophies for the United Fan!"];
        Texti2.text = [NSString stringWithFormat:@"Try again!"];
        
    }
    
    Texti.hidden = NO;
    Texti2.hidden = NO;
    
    [self crash];
    [self performSelector:@selector(NewGame) withObject:nil afterDelay:2];
    
    
}

-(void)NewGame{
    
    Win.hidden = YES;
    Win2.hidden = YES;
    Win3.hidden = YES;
    Win4.hidden = YES;
    Win5.hidden = YES;
    Win6.hidden = YES;
    Win7.hidden = YES;
    Win8.hidden = YES;
    Score.hidden = YES;
    Moyes.hidden = YES;
    
    WelcomeMoyes.hidden = NO;
    WelcomeWin.hidden = NO;
    song = NO;
    Texti.hidden = YES;
    Texti2.hidden = YES;
    Intro1.hidden = NO;
    Intro2.hidden = NO;
    Intro3.hidden = NO;
    HighScoretext.hidden = NO;
    Moyes.hidden = YES;
    Moyes.center = CGPointMake(xMoyes, yMoyes);
    Start = YES;
    totalscore = 0;
    Score.text = [NSString stringWithFormat:@"0"];
    HighScoretext.text = [NSString stringWithFormat:@"High Score: %i", HighScore];
    timer = 2;
    hit = 1;
    
    [self themeSong];
    
}

-(void)Collision{
    
    CGPoint a = Win.center;
    CGPoint b = Moyes.center;
    CGFloat distance = sqrt(pow((b.x - a.x),2) + pow((b.y - a.y),2));
    if(distance < abs(Win.bounds.size.width/x + Moyes.bounds.size.width/x)){
        [self EndGame];
    }
    CGPoint a2 = Win2.center;
    CGPoint b2 = Moyes.center;
    CGFloat distance2 = sqrt(pow((b2.x - a2.x),2) + pow((b2.y - a2.y),2));
    if(distance2 < abs(Win2.bounds.size.width/x + Moyes.bounds.size.width/x)){
        [self EndGame];
    }
    CGPoint a3 = Win3.center;
    CGPoint b3 = Moyes.center;
    CGFloat distance3 = sqrt(pow((b3.x - a3.x),2) + pow((b3.y - a3.y),2));
    if(distance3 < abs(Win3.bounds.size.width/x + Moyes.bounds.size.width/x)){
        [self EndGame];
    }
    CGPoint a4 = Win4.center;
    CGPoint b4 = Moyes.center;
    CGFloat distance4 = sqrt(pow((b4.x - a4.x),2) + pow((b4.y - a4.y),2));
    if(distance4 < abs(Win4.bounds.size.width/x + Moyes.bounds.size.width/x)){
        [self EndGame];
    }
    CGPoint a5 = Win5.center;
    CGPoint b5 = Moyes.center;
    CGFloat distance5 = sqrt(pow((b5.x - a5.x),2) + pow((b5.y - a5.y),2));
    if(distance5 < abs(Win5.bounds.size.width/x + Moyes.bounds.size.width/x)){
        [self EndGame];
    }
    CGPoint a6 = Win6.center;
    CGPoint b6 = Moyes.center;
    CGFloat distance6 = sqrt(pow((b6.x - a6.x),2) + pow((b6.y - a6.y),2));
    if(distance6 < abs(Win6.bounds.size.width/x + Moyes.bounds.size.width/x)){
        [self EndGame];
    }
    CGPoint a7 = Win7.center;
    CGPoint b7 = Moyes.center;
    CGFloat distance7 = sqrt(pow((b7.x - a7.x),2) + pow((b7.y - a7.y),2));
    if(distance7 < abs(Win7.bounds.size.width/x + Moyes.bounds.size.width/x)){
        [self EndGame];
    }
    if (FewerWins == NO){
        CGPoint a8 = Win8.center;
        CGPoint b8 = Moyes.center;
        CGFloat distance8 = sqrt(pow((b8.x - a8.x),2) + pow((b8.y - a8.y),2));
        if(distance8 < abs(Win8.bounds.size.width/x + Moyes.bounds.size.width/x)){
            [self EndGame];
        }
    }
}

-(void)MakeWin{
    
    RandomWinPosition = arc4random() % RandomScreen;
    
    Win.center = CGPointMake(Begin, Top + RandomWinPosition);
    
}

-(void)MakeWin2{
    
    RandomWin2Position = arc4random() % RandomScreen;
    
    Win2.center = CGPointMake(Begin, Top + RandomWin2Position);
    
}
-(void)MakeWin3{
    
    RandomWin3Position = arc4random() % RandomScreen;
    
    Win3.center = CGPointMake(Begin, Top + RandomWin3Position);
    
}

-(void)MakeWin4{
    
    RandomWin4Position = arc4random() % RandomScreen;
    
    Win4.center = CGPointMake(Begin, Top + RandomWin4Position);
    
}
-(void)MakeWin5{
    
    RandomWin5Position = arc4random() % RandomScreen;
    
    Win5.center = CGPointMake(Begin, Top + RandomWin5Position);
    
}

-(void)MakeWin6{
    
    RandomWin6Position = arc4random() % RandomScreen;
    
    Win6.center = CGPointMake(Begin, Top + RandomWin6Position);
    
}

-(void)MakeWin7{
    
    RandomWin7Position = arc4random() % RandomScreen;
    
    Win7.center = CGPointMake(Begin, Top + RandomWin7Position);
    
}

-(void)MakeWin8{
    
    RandomWin8Position = arc4random() % RandomScreen;
    
    Win8.center = CGPointMake(Begin, Top + RandomWin8Position);
    
}

-(void)MoveWin{
    
    [self Collision];
    
    Win.center = CGPointMake(Win.center.x - 1 * speedUp, Win.center.y);
    Win2.center = CGPointMake(Win2.center.x - 1.2 * speedUp, Win2.center.y);
    Win3.center = CGPointMake(Win3.center.x - 1.5 * speedUp, Win3.center.y);
    Win4.center = CGPointMake(Win4.center.x - 2.1 * speedUp, Win4.center.y);
    Win5.center = CGPointMake(Win5.center.x - 2.3 * speedUp, Win5.center.y);
    Win6.center = CGPointMake(Win6.center.x - 2.5 * speedUp, Win6.center.y);
    Win7.center = CGPointMake(Win7.center.x - 3.0 * speedUp, Win7.center.y);
    Win8.center = CGPointMake(Win8.center.x - 3.2 * speedUp, Win8.center.y);
    
    if (Win.center.x < NewWin) {
        [self MakeWin];
    }
    
    if (Win2.center.x < NewWin) {
        [self MakeWin2];
    }
    
    if (Win3.center.x < NewWin) {
        [self MakeWin3];
    }
    
    if (Win4.center.x < NewWin) {
        [self MakeWin4];
    }
    
    if (Win5.center.x < NewWin) {
        [self MakeWin5];
    }
    
    if (Win6.center.x < NewWin) {
        [self MakeWin6];
    }
    
    if (Win7.center.x < NewWin) {
        [self MakeWin7];
    }
    
    if (Win8.center.x < NewWin) {
        [self MakeWin8];
    }
    
}

-(void)MoyesMove{
    
    Moyes.center = CGPointMake(Moyes.center.x, Moyes.center.y - MoyesFlight);
    
    MoyesFlight = MoyesFlight - Drop;
    
    if(MoyesFlight < - Addon){
        MoyesFlight = - Addon;
    }
    
    if(MoyesFlight >= 0) {
        Moyes.image = [UIImage imageNamed:@"fan.png"];
    }
    
    if(MoyesFlight < 0) {
        Moyes.image = [UIImage imageNamed:@"fand.png"];
    }
    
    
    if (Moyes.center.y > bottomLimit){
        
        hit = 2;
        [self EndGame];
        
    }
    
    if (Moyes.center.y < topLimit){
        
        hit = 3;
        [self EndGame];
        
    }
    
    
    if (song == YES) {
        [self backGround];
        song = NO;
    }
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (Start == YES){
        
        [self Counter];
        
        Win.hidden = NO;
        Win2.hidden = NO;
        Win3.hidden = NO;
        Win4.hidden = NO;
        Win5.hidden = NO;
        Win6.hidden = NO;
        Win7.hidden = NO;
        Moyes.hidden = NO;
        if (FewerWins == YES){
            Win8.hidden = YES;
        }
        else {
            Win8.hidden = NO;
        }
        
        Score.hidden = NO;
        Timi.hidden = NO;
        Instructions.hidden = NO;
        
        WelcomeMoyes.hidden = YES;
        WelcomeWin.hidden = YES;
        Texti.hidden = YES;
        Intro1.hidden = YES;
        Intro2.hidden = YES;
        Intro3.hidden = YES;
        HighScoretext.hidden = YES;
        song = YES;
        Texti2.hidden = YES;
        Moyes.image = [UIImage imageNamed:@"fan.png"];
        
        [self MakeWin];
        [self MakeWin2];
        [self MakeWin3];
        [self MakeWin4];
        [self MakeWin5];
        [self MakeWin6];
        [self MakeWin7];
        
        if (FewerWins == NO){
            [self MakeWin8];
        }
        
        Start = NO;
        
        [self performSelector:@selector(Game) withObject:nil afterDelay:1.8];
        
    }
    
    MoyesFlight = Addon;
    
}

-(void)backGround{
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/background.mp3", [[NSBundle mainBundle] resourcePath]]];
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	audioPlayer.numberOfLoops = -1;
    audioPlayer.volume = 0.7; // 0.0 - no volume; 1.0 full volume
    [audioPlayer play];
    
}

-(void)crash{
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/crash.mp3", [[NSBundle mainBundle] resourcePath]]];
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	audioPlayer.numberOfLoops = 0;
    audioPlayer.volume = 0.2; // 0.0 - no volume; 1.0 full volume
    [audioPlayer play];
    
}

-(void)themeSong{
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/theme.mp3", [[NSBundle mainBundle] resourcePath]]];
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	audioPlayer.numberOfLoops = -1;
    audioPlayer.volume = 0.2; // 0.0 - no volume; 1.0 full volume
    [audioPlayer play];
    
}

- (void)viewDidLoad{
    
    Start = YES;
    
    HighScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    
    HighScoretext.text = [NSString stringWithFormat:@"High Score: %i", HighScore];
    
    Score.hidden = YES;
    Win.hidden = YES;
    Win2.hidden = YES;
    Win3.hidden = YES;
    Win4.hidden = YES;
    Win5.hidden = YES;
    Win6.hidden = YES;
    Win7.hidden = YES;
    Win8.hidden = YES;
    Texti.hidden = YES;
    Timi.hidden = YES;
    Instructions.hidden = YES;
    Moyes.hidden = YES;
    Texti2.hidden = YES;
    
    WelcomeMoyes.hidden = NO;
    WelcomeWin.hidden = NO;
    
    result = [[UIScreen mainScreen] bounds].size;
    int screenSize = result.height;
    if (screenSize < 550){
        
        iphone5 = NO;
        RandomScreen = 355;
        FewerWins = YES;
        topLimit = 87;
        bottomLimit = 457;
        
    }
    
    else if (screenSize > 600){
        
        RandomScreen = 700;
        Addon = 28;
        Begin = 810;
        NewWin = -80;
        Drop = 5;
        xMoyes = 90;
        yMoyes = 495;
        topLimit = 135;
        bottomLimit = 988;
        Top = 140;
        speedUp = 2.1;
        iPAD = YES;
        
    }
    
    
    [self themeSong];
    
    [super viewDidLoad];
    if (iPAD) {
        
        self.bannerView = [[ADBannerView alloc] initWithFrame:CGRectMake(0, 20, 768, 90)];
        
    }
    else {
        
        self.bannerView = [[ADBannerView alloc] initWithFrame:CGRectMake(0, 20, 320, 50)];
        
    }
    [self.bannerView setRequiredContentSizeIdentifiers:[NSSet setWithObjects:
                                                        ADBannerContentSizeIdentifierPortrait, nil]];
    self.bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
    [self.bannerView setDelegate:self];
    [self.view addSubview:self.bannerView];
    
}

- (void)didReceiveMemoryWarning{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    
    // 1
    [self.bannerView removeFromSuperview];
    
    // 2
    if (iPAD) {
        
        _admobBannerView = [[GADBannerView alloc]
                            initWithFrame:CGRectMake(0.0,20,
                                                     768,
                                                     90)];
        
    }
    else {
        
        _admobBannerView = [[GADBannerView alloc]
                            initWithFrame:CGRectMake(0.0,20,
                                                     GAD_SIZE_320x50.width,
                                                     GAD_SIZE_320x50.height)];
        
    }
    
    // 3
    self.admobBannerView.adUnitID = @"ca-app-pub-1869609966787712/7502224780";
    self.admobBannerView.rootViewController = self;
    self.admobBannerView.delegate = self;
    
    // 4
        [self.view addSubview:self.admobBannerView];
        [self.admobBannerView loadRequest:[GADRequest request]];
    
}

- (void)adView:(GADBannerView *)view didFailToReceiveAdWithError:(GADRequestError *)error {
    
    [self.admobBannerView removeFromSuperview];
    
}





@end
