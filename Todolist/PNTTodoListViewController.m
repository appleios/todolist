//
//  Created by Nodir Latipov on 10/27/18.
//  Copyright © 2018 ProjectN. All rights reserved.
//

#import "PNTTodoListViewController.h"

@interface PNTTodoListViewController ()

@property (strong, nonatomic) NSArray *namesArray;

@end

@implementation PNTTodoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

#pragma mark - UITableViewDataSours

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.namesArray count];

    
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indentifier = @"Cell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];

    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentifier];
    }

    cell.textLabel.text = [self.namesArray objectAtIndex:indexPath.row];

    return cell;
}


@end
