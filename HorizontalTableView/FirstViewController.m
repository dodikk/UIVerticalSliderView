#import "FirstViewController.h"

#import "HorizontalTableView.h"
#import "CellView.h"

@implementation FirstViewController

@synthesize horizontalTableView = _horizontal_table_view;

-(CGRect)tableViewFrame
{
   return CGRectMake( 10.f, 10.f, self.view.frame.size.width - 20.f, self.view.frame.size.height - 20.f );
}

#pragma mark- View lifecycle

-(void)viewDidLoad
{
   self.horizontalTableView.transform = CGAffineTransformMakeRotation( -M_PI / 2 );
   self.horizontalTableView.frame = [ self tableViewFrame ];
   self.horizontalTableView.pagingEnabled = YES;

   [ self.horizontalTableView setEditing: YES animated: YES ];

   [ super viewDidLoad ];   
}

-(void)viewDidLayoutSubviews
{
   self.horizontalTableView.frame = [ self tableViewFrame ];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:( UIInterfaceOrientation )interface_orientation_
{
   return YES;
}

#pragma mark- Table view data source

-(NSInteger)numberOfSectionsInTableView:( UITableView* )table_view_
{
   return 1;
}

-(NSInteger)tableView:( UITableView* )table_view_ numberOfRowsInSection:( NSInteger )section_
{
   return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return self.horizontalTableView.frame.size.width / 3.f;
}

-(UITableViewCell*)tableView:( UITableView* )table_view_ cellForRowAtIndexPath:( NSIndexPath* )index_path_
{
   static NSString* cell_identifier_ = @"CellView";

   UITableViewCell* cell_ = [ table_view_ dequeueReusableCellWithIdentifier: cell_identifier_ ];
   if ( cell_ == nil )
   {
      cell_ = [ [ UITableViewCell alloc ] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: cell_identifier_ ];

      CellView* cell_view_ = [ CellView cell ];   

      cell_view_.transform = CGAffineTransformMakeRotation( M_PI / 2 );
      cell_view_.frame = cell_.bounds;

      [ cell_.contentView addSubview: cell_view_ ];      
   }

   return cell_;
}

-(BOOL)tableView:( UITableView* )table_view_ canEditRowAtIndexPath:( NSIndexPath* )index_path_
{
   return YES;
}

-(BOOL)tableView:( UITableView* )table_view_ canMoveRowAtIndexPath:( NSIndexPath* )index_path_
{
   return YES;
}


-(BOOL)tableView:( UITableView* )table_view_ shouldIndentWhileEditingRowAtIndexPath:( NSIndexPath* )index_path_
{
   return NO;
}

-(void)tableView:( UITableView* )table_view_ moveRowAtIndexPath:( NSIndexPath* )from_index_path_ toIndexPath:( NSIndexPath*)to_index_path_
{
}

#pragma mark - Table view delegate

-(void)tableView:( UITableView* )table_view_ didSelectRowAtIndexPath:( NSIndexPath* )index_path_
{
}

-(UITableViewCellEditingStyle)tableView:( UITableView* )table_view_ editingStyleForRowAtIndexPath:( NSIndexPath* )index_path_
{
   return UITableViewCellEditingStyleNone;
}

@end
