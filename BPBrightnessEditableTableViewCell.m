//
//  BPBrightnessEditableTableViewCell.m
//  Folio
//
//  Created by Jon Olson on 7/29/10.
//  Copyright 2010 Ballistic Pigeon, LLC. All rights reserved.
//

#import "BPBrightnessEditableTableViewCell.h"


@implementation BPBrightnessEditableTableViewCell

+ (Class)controlClass {
    return [UISlider class];
}

#pragma mark -
#pragma mark Construction and deallocation

- (id)init {
    return [self initWithReuseIdentifier:nil];
}

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        dimLabel = [[[UILabel alloc] initWithFrame:CGRectZero] autorelease];
        dimLabel.text = @"☀";
        dimLabel.font = [UIFont systemFontOfSize:18.0];
        dimLabel.textColor = [UIColor colorWithWhite:0.35 alpha:1.0];
        dimLabel.textAlignment = UITextAlignmentCenter;
        dimLabel.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:dimLabel];

        brightLabel = [[[UILabel alloc] initWithFrame:CGRectZero] autorelease];
        brightLabel.text = @"☀";
        brightLabel.font = [UIFont systemFontOfSize:24.0];
        brightLabel.textColor = [UIColor colorWithWhite:0.35 alpha:1.0];
        brightLabel.textAlignment = UITextAlignmentCenter;
        brightLabel.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:brightLabel];
    }
    
    return self;
}

#pragma mark -
#pragma mark Accessors

- (UISlider *)brightnessSlider {
    return (UISlider *)self.control;
}

#pragma mark -
#pragma mark Layout

- (void)layoutSubviews {
    [super layoutSubviews];
    
    const CGFloat sunWidth = 30;
    
    CGRect bounds = self.contentView.bounds;
    dimLabel.frame = CGRectMake(0, 0, sunWidth, bounds.size.height);
    brightLabel.frame = CGRectMake(bounds.size.width - sunWidth, 0, sunWidth, bounds.size.height);
    
    self.control.frame = CGRectMake(sunWidth + 5, 0, bounds.size.width - 2*(sunWidth + 5), bounds.size.height);
    
}

@end
