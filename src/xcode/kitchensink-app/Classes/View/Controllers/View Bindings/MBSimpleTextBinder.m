//
//  MBTextBinder.m
//  kitchensink-app
//
//  Created by Emiel Bon on 15-01-15.
//  Copyright (c) 2015 Itude Mobile. All rights reserved.
//

#import "MBSimpleTextBinder.h"
#import "MBBuildState.h"
#import "UIView+ViewBinding.h"

@implementation MBSimpleTextBinder

- (instancetype)initWithBindingIdentifier:(NSString *)identifier;
{
    self = [super init];
    if (self) {
        self.identifier = identifier;
    }
    return self;
}

+ (instancetype)binderWithIdentifier:(NSString *)identifier
{
    return [[[MBSimpleTextBinder alloc] initWithBindingIdentifier:identifier] autorelease];
}

- (UIView *)bindSpecificView:(MBBuildState *)state
{
    //UIView *textView = [state.parent viewWithTag:self.identifier];
    UIView *textView = [state.parent viewWithBindingIdentifier:self.identifier]; // Can be a UITextView, UITextField or UILabel, anything that responds to setText
    if (textView) {
        assert([state.component isKindOfClass:[MBField class]]);
        MBField *field = (MBField *)state.component;
        if ([textView respondsToSelector:@selector(setText:)]) {
            [(id)textView setText:field.formattedValue];
        }
    }
    return textView;
}

@end