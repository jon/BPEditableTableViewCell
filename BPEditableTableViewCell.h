//
//  BPEditableTableViewCell.h
//  Brewtool
//
//  Created by Jon Olson on 10/14/09.
//  Copyright 2009 Ballistic Pigeon, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BPEditableTableViewCell : UITableViewCell {
	UIControl *control;
}

@property (readonly) UIControl *control;
@property (copy) id value;

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier;

@end
