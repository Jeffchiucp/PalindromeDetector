//
//  ViewController.m
//  PalindromeDetector
//
//  Created by JeffChiu on 3/16/16.
//  Copyright © 2016 JeffChiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *yesNoLabel;
@property (weak, nonatomic) IBOutlet UIButton *makePalindrome;

@property (weak, nonatomic) IBOutlet UILabel *outPutLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)checkPalindrome:(UIButton *)sender
{
    NSString *palindrome = self.textField.text;
    NSUInteger length = palindrome.length;
    NSLog(@"Length equals: %lu", length);
    
    for (int i=0; i < length; i++)
    {
        NSLog(@"[palindrome characterAtIndex:%i] = %c", i, [palindrome characterAtIndex:i]);
        if ([palindrome characterAtIndex:i] != [palindrome characterAtIndex:length-1-i])
        {
            NSLog(@"nope");
            self.yesNoLabel.text = @"nope";
            return;
        }
        
    }
    
    self.yesNoLabel.text =@"yes";
}

- (IBAction)createPalindrome:(UIButton *)sender
{
    NSString *firstPart = self.textField.text;
    NSMutableString *secondPart = [NSMutableString new];
    
    NSUInteger length = firstPart.length;
    for (int i=0; i < length; i++)
    {
        unichar c = [firstPart characterAtIndex:length -1-i];
        [secondPart appendFormat: @"%c", c];
    }
    // stringByAppendingFormat:@"%C", c];
    self.outPutLabel.text = [NSString stringWithFormat:@"%@%@", firstPart, secondPart];
}


@end
