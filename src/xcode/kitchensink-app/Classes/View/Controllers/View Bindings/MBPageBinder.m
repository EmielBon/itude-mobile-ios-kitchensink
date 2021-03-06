//
//  MBPageBinder.m
//  kitchensink-app
//
//  Created by Emiel Bon on 15-01-15.
//  Copyright (c) 2015 Itude Mobile. All rights reserved.
//

#import "MBPageBinder.h"
#import "MBBuildState.h"

@interface MBPageBinder()

@property (nonatomic, retain) MBBuildState *state;
@property (nonatomic, retain) NSMutableDictionary *childViewBinders;

@end

@implementation MBPageBinder

- (MBBuildState *)state
{
    if (!_state) {
        _state = [[MBBuildState alloc] init];
    }
    return _state;
}

- (NSMutableDictionary *)childViewBinders
{
    if (!_childViewBinders) {
        _childViewBinders = [[NSMutableDictionary alloc] init];
    }
    return _childViewBinders;
}

- (instancetype)initWithViewController:(MBBasicViewController *)viewController
{
    self = [super init];
    if (self) {
        self.state.mainViewBinder = self;
        self.state.parent         = viewController.view;
        self.state.element        = viewController.page.document;
        self.state.component      = viewController.page;
        self.state.document       = viewController.page.document;
    }
    return self;
}

- (void)bind
{
    [self bindView:self.state];
}

- (UIView *)bindSpecificView:(MBBuildState *)state
{
    id<MBViewBinder> binder = self.childViewBinders[state.component.name];
    return [binder bindView:state];
}

- (void)registerBinder:(id<MBViewBinder>)binder forComponentWithName:(NSString *)componentName
{
    self.childViewBinders[componentName] = binder;
}

@end
