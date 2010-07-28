//
//  BPTextFieldEditableTableViewCell.m
//  Brewtool
//
//  Created by Jon Olson on 10/14/09.
//  Copyright 2009 Ballistic Pigeon, LLC. All rights reserved.
//

#import "BPTextFieldEditableTableViewCell.h"


@implementation BPTextFieldEditableTableViewCell

+ (Class)controlClass {
	return [UITextField class];
}

#pragma mark -
#pragma mark Construction and deallocation

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
		self.textField.textColor = [UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1];
		self.textField.font = [UIFont systemFontOfSize:15.0];
		self.textField.delegate = self;
	}
	
	return self;
}

- (id)initWithLabel:(NSString *)label placeholder:(NSString *)placeholder reuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [self initWithLabel:label reuseIdentifier:reuseIdentifier]) {
		self.textField.placeholder = placeholder;
	}
	
	return self;
}

#pragma mark -
#pragma mark Control accessor

- (UITextField *)textField {
	return (UITextField *)self.control;
}

#pragma mark -
#pragma mark Value accessors

- (id)value {
	return self.textField.text;
}

- (void)setValue:(id)aValue {
	self.textField.text = [[aValue copy] autorelease];
}

#pragma mark -
#pragma mark UITextFieldDelegate implementation

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	if ([delegate respondsToSelector:@selector(editableTableViewCellShouldReturn:)])
		return [delegate editableTableViewCellShouldReturn:self];
	return YES;
}

@end
