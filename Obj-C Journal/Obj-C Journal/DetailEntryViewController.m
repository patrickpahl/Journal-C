//
//  DetailEntryViewController.m
//  Obj-C Journal
//
//  Created by Patrick Pahl on 5/31/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

#import "DetailEntryViewController.h"
#import "EntryController.h"


@interface DetailEntryViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextField;

@end

@implementation DetailEntryViewController

-(void)updateWithEntry:(Entry *)entry {

    if (entry) {
        self.entry = entry;
        self.titleTextField.text = self.entry.title;
        self.bodyTextField.text = self.entry.bodyText;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateWithEntry:self.entry];
}


- (IBAction)saveButtonTapped:(id)sender {
    if (self.entry) {
        self.entry.title = self.titleTextField.text;
        self.entry.bodyText = self.bodyTextField.text;
        self.entry.timeStamp = [NSDate date];
    } else {
        
//        Entry *entry = [[Entry alloc] initWithTitle:self.titleTextField.text andBodyText:self.bodyTextField.text andTimeStamp:[NSDate date]];
//        
//        [[EntryController sharedInstance] addEntry: entry];
//        
//        self.entry = entry;
    }
    [self.navigationController popViewControllerAnimated:true];
    
}

- (IBAction)clearButtonTapped:(id)sender {
    self.titleTextField.text = @"";
    self.bodyTextField.text = @"";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)textFieldShouldReturn: (UITextField *) textField {
    [textField resignFirstResponder];
    return true;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
