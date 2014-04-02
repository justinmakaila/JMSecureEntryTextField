//
//  JMSecureEntryTextField.m
//  JMSecureEntryTextField
//
//  Created by Justin Makaila on 3/24/14.
//  Copyright (c) 2014 Justin Makaila. All rights reserved.
//

#import "JMSecureEntryTextField.h"

@interface JMSecureEntryTextField ()

- (void)visibilityToggled:(UIButton*)sender;

@end

@implementation JMSecureEntryTextField

- (id)init {
    self = [super init];
    if (self) {
        [self baseInit];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self baseInit];
    }
    
    return self;
}

- (void)awakeFromNib {
    [self baseInit];
}

- (void)baseInit {
    self.secureTextEntry = YES;
    
    CGFloat visibilityButtonXValue = CGRectGetWidth(self.bounds) - 40;
    
    _visibilityButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _visibilityButton.frame = CGRectMake(visibilityButtonXValue, 0, 40, 40);
    _visibilityButton.backgroundColor = [UIColor grayColor];
    [_visibilityButton setTitle:@"YES" forState:UIControlStateNormal];
    [_visibilityButton setTitle:@"NO" forState:UIControlStateSelected];
    [_visibilityButton addTarget:self
                          action:@selector(visibilityToggled:)
                forControlEvents:UIControlEventTouchUpInside];
    
    self.rightView = _visibilityButton;
    self.rightViewMode = UITextFieldViewModeAlways;
    
    [self textRectForBounds:CGRectMake(0, 0, visibilityButtonXValue, CGRectGetHeight(self.bounds))];
}

- (void)visibilityToggled:(UIButton*)sender {
    sender.selected = !sender.isSelected;
    self.enabled = NO;
    self.secureTextEntry = !sender.isSelected;
    self.enabled = YES;
    [self becomeFirstResponder];
}

@end
