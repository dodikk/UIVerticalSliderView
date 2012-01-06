#import "CellView.h"

@implementation CellView

+(id)cell
{
   UIViewController* controller_ = [ [ UIViewController alloc ] initWithNibName: NSStringFromClass( self ) bundle: nil ];
   return controller_.view;
}

#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:( UITableView* )table_view_
{
   return 1;
}

-(NSInteger)tableView:( UITableView* )table_view_ numberOfRowsInSection:( NSInteger )section_
{
   return 100;
}

-( UITableViewCell* )tableView:( UITableView* )table_view_ cellForRowAtIndexPath:( NSIndexPath* )index_path_
{
   static NSString* cell_identifier_ = @"CellView";

   UITableViewCell* cell_ = [ table_view_ dequeueReusableCellWithIdentifier: cell_identifier_ ];
   if ( cell_ == nil)
   {
      cell_ = [ [ UITableViewCell alloc ] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: cell_identifier_ ];      
   }
   
   cell_.textLabel.text = @"Temp text in cell";
   
   return cell_;
}

@end
