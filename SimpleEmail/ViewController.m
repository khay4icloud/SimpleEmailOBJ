//
//  ViewController.m
//  SimpleEmail
//
//  Created by Sri Kalyan Ganja on 4/17/17.
//  Copyright © 2017 KLYN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showEmail:(id)sender {
    
    //Email Subject
    NSString *emailTitle = @"Test Email";
    
    //Email Content
    NSString *messageBody = @"iOS Programing is so fun!";
    
    //To Address
    NSArray *toRecipents = [NSArray arrayWithObject:@"prikal@gmail.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    
    if ([MFMailComposeViewController canSendMail]) {
        mc.mailComposeDelegate = self;
        [mc setSubject:emailTitle];
        [mc setMessageBody:messageBody isHTML:NO];
        [mc setToRecipients:toRecipents];
        
        //Present mail view controller on screen
        [self presentViewController:mc animated:YES completion:NULL];
    } else {
        NSLog(@"Mail serives are not available");
        return;
    }
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller
           didFinishWithResult:(MFMailComposeResult)result
                         error:(NSError *)error {
    switch (result) {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail Cancelled");
            break;
            
        case MFMailComposeResultSaved:
            NSLog(@"Mail Saved");
            break;
            
        case MFMailComposeResultSent:
            NSLog(@"Mail Sent");
            break;
            
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
            
        default:
            break;
    }
    
    //Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
