//
//  ViewController.m
//  SampleAFNetworking
//
//  Created by Cristian de Oliveira on 23/10/12.
//  Copyright (c) 2012 Cristian de Oliveira. All rights reserved.
//

#import "ViewController.h"
#import "AFJSONRequestOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSURL *url = [NSURL URLWithString:@"http://httpbin.org/ip"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSLog(@"IP Address: %@", [JSON valueForKeyPath:@"origin"]);
    } failure:nil];
    
    [operation start];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
