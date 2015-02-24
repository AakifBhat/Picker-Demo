//
//  ViewController.m
//  DatePicker
//
//  Created by Aamir on 01/12/14.
//  Copyright (c) 2014 infobeam.in. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *row1, *row2;
}
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController
- (IBAction)displayDay:(id)sender {
    //grab the selected date on the date picker.
    NSDate *chosen = [self.datePicker date];
    //create the nsdate format
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"EEEE"];
    NSString *weekday = [formatter stringFromDate:chosen];
    NSString *msg = [[NSString alloc]initWithFormat:@"the selected day is %@" ,weekday];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"what day is that" message:msg delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    row1 = [[NSArray alloc]initWithObjects:@"chinease",@"marble" , @"commponet" , @"frencile" , @"proprty", nil];
    row2 = [[NSArray alloc]initWithObjects:@"franchise", @"mible" , @"conportnt" , @"sistern" , nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
#pragma mark pickerMethods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component==0) {
        return  row1.count;
    }else{
        return row2.count;
    }
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component ==0){
        return [row1 objectAtIndex:row];
    }else{
        return [row2 objectAtIndex:row];
    }
}
#pragma mark-

@end
