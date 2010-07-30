//
//  BPBrightnessEditableTableViewCell.h
//  Folio
//
//  Created by Jon Olson on 7/29/10.
//  Copyright 2010 Ballistic Pigeon, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BPEditableTableViewCell.h"

@interface BPBrightnessEditableTableViewCell : BPEditableTableViewCell {
    UILabel *dimLabel;
    UILabel *brightLabel;
}

@property (readonly) UISlider *brightnessSlider;

@end
