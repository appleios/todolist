//
//  Created by Nodir Latipov on 10/27/18.
//  Copyright © 2018 ProjectN. All rights reserved.
//

#import "PNTTodoListViewController.h"

@interface PNTTodoListViewController ()

@property (nonatomic, copy) NSArray *todos;

@end

@implementation PNTTodoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.todos = @[ @"todo1", @"todo2" ];
}

#pragma mark - UITableViewDataSours

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.todos count];

    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sel"];
    cell.textLabel.text = self.todos[indexPath.row];

    return cell;
}


@end
