//
//  Created by Nodir Latipov on 10/27/18.
//  Copyright © 2018 ProjectN. All rights reserved.
//

#import "PNTTodoListViewController.h"

@interface PNTTodoListViewController ()

@property (strong, nonatomic) NSArray *todos;

@end

@implementation PNTTodoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.todos = @[ @"todo1", @"todo2" ]
}

#pragma mark - UITableViewDataSours

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.todos count];

    
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"a"];

    cell.textLabel.text = [self.todos objectAtIndex:indexPath.row];

    return cell;
}


@end
