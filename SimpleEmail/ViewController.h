//
//  ViewController.h
//  SimpleEmail
//
//  Created by Sri Kalyan Ganja on 4/17/17.
//  Copyright © 2017 KLYN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate>

- (IBAction)showEmail:(id)sender;

@end

