#import "HorizontalTableView.h"

@implementation HorizontalTableView

-(void)setFrame:( CGRect )frame_
{
   CGAffineTransform transform_ = self.transform;
   self.transform = CGAffineTransformIdentity;

   CGRect new_rect_ = CGRectMake( frame_.origin.x + ( frame_.size.width - frame_.size.height ) / 2.f, 
                                  frame_.origin.y + ( frame_.size.height - frame_.size.width ) / 2.f, 
                                  frame_.size.height, frame_.size.width );

   [ super setFrame: new_rect_ ];

   self.transform = transform_;
}

-(CGRect)frame
{
   CGRect rect_ = super.frame;
   CGRect new_rect_ = CGRectMake( rect_.origin.x + ( rect_.size.width - rect_.size.height ) / 2.f, 
                                  rect_.origin.y + ( rect_.size.height - rect_.size.width ) / 2.f, 
                                  rect_.size.height, rect_.size.width );

   return new_rect_;
}

@end
