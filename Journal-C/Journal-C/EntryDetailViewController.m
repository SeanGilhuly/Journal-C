//
//  EntryDetailViewController.m
//  Journal-C
//
//  Created by Sean Gilhuly on 5/31/16.
//  Copyright © 2016 Sean Gilhuly. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "Entry.h"
#import "EntryController.h"

@interface EntryDetailViewController ()

#pragma mark - IBOutlet
@property (weak, nonatomic) IBOutlet UITextField *entrytitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextField;

@end

@implementation EntryDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - IBOutlet
- (IBAction)saveButtonTapped:(id)sender {
    
    if (self.entry) {
        self.entry.title = self.entrytitleTextField.text;
        self.entry.bodyText = self.entryBodyTextField.text;
    } else {
        Entry *entry = [[Entry alloc]initWithName:self.entrytitleTextField.text bodyText:self.entryBodyTextField.text];
        [[EntryController sharedInstance] addEntry:entry];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(id)sender {
    self.entrytitleTextField.text = @"";
    self.entryBodyTextField.text = @"";
}

-(BOOL) textFieldShouldReturn:(UITextField *) entryTitleTextField
{
    [entryTitleTextField resignFirstResponder];
    return YES;
}

#pragma mark - Functions

-(void)updateWith:(Entry *)entry
{
    self.entrytitleTextField.text = entry.title;
    self.entryBodyTextField.text = entry.bodyText;
}




@end
