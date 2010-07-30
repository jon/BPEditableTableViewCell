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
	
    BOOL disabledWhenNotEditing;
    
	id delegate;
}

@property (readonly) UIControl *control;
@property (assign) BOOL disabledWhenNotEditing;
@property (copy) id value;

@property (assign) id delegate;

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier;
- (id)initWithLabel:(NSString *)label reuseIdentifier:(NSString *)reuseIdentifier;

@end

@interface NSObject (BPEditableTableViewCellDelegate)

- (void)editableTableViewCell:(BPEditableTableViewCell *)cell didUpdateValue:(id)value;
- (BOOL)editableTableViewCellShouldReturn:(BPEditableTableViewCell *)cell;

@end

