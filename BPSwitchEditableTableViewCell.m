//
//  BPSwitchEditableTableViewCell.m
//  Brewtool
//
//  Created by Jon Olson on 10/14/09.
//  Copyright 2009 Ballistic Pigeon, LLC. All rights reserved.
//

#import "BPSwitchEditableTableViewCell.h"


@implementation BPSwitchEditableTableViewCell

+ (Class)controlClass {
	return [UISwitch class];
}

#pragma mark -
#pragma mark Switch accessor

- (UISwitch *)switchControl {
	return (UISwitch *)self.control;
}

#pragma mark -
#pragma mark Value accessors

- (id)value {
	return [NSNumber numberWithBool:self.switchControl.on];
}

- (void)setValue:(id)aValue {
	self.switchControl.on = [aValue boolValue];
}

#pragma mark -
#pragma mark Layout

- (void)layoutSubviews {
	[super layoutSubviews];
	control.frame = CGRectMake(198, 8, 0, 0);
}

@end
