//
//  MBBuildState.h
//  kitchensink-app
//
//  Created by Emiel Bon on 15-01-15.
//  Copyright (c) 2015 Itude Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBViewBinder.h"

@interface MBBuildState : NSObject <NSCopying>

@property (nonatomic, retain) id<MBViewBinder> mainViewBinder;

@property (nonatomic, retain) UIView             *parent;
@property (nonatomic, retain) MBDocument         *document;
@property (nonatomic, retain) MBElementContainer *element;
@property (nonatomic, retain) MBComponent        *component;

@end
