#import <UIKit/UIKit.h>

@class HorizontalTableView;

@interface FirstViewController : UIViewController < UITableViewDelegate, UITableViewDataSource >
{
@private
   __weak HorizontalTableView* _horizontal_table_view;
}

@property ( nonatomic, weak ) IBOutlet HorizontalTableView* horizontalTableView;

@end
