/*
 * (C) Copyright Itude Mobile B.V., The Netherlands.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "CustomApplicationFactory.h"

// Controllers
#import "CustomizedViewLogic.h"
#import "CustomizedList.h"
#import "CustomizedLayout.h"
#import "PageWithXibFileViewController.h"
#import "SimplestPlantCatalogViewBindingController.h"
#import "PlantCatalogViewBindingController.h"
#import "SpecialPlantCatalogViewBindingController.h"
#import "PlantDetailViewBindingController.h"

// Actions
#import "FireInitialOutcomes.h"
#import "ExceptionExampleAction.h"
#import "CustomAction.h"

@implementation CustomApplicationFactory

-(id<MBResultListener>) createResultListener:(NSString *)listenerClassName {
	return nil;
}

- (UIViewController<MBViewControllerProtocol> *)viewControllerForPageWithName:(NSString *)pageName
{
    if ([pageName isEqualToString:@"PAGE-customized-view-logic"]) {
        return [[CustomizedViewLogic alloc] init];
    } else if ([pageName isEqualToString:@"PAGE-customized-view-logic"]) {
        return [[CustomizedList alloc] init];
    } else if ([pageName isEqualToString:@"PAGE-customized-layout"]) {
        return [[CustomizedLayout alloc] init];
    } else if ([pageName isEqualToString:@"PAGE-page-with-xib"]) {
        return [[PageWithXibFileViewController alloc] init];
    } else if ([pageName isEqualToString:@"PAGE-modern-catalog"]) {
        return [[SimplestPlantCatalogViewBindingController alloc] init];
    } else if ([pageName isEqualToString:@"PAGE-modern-catalog-2"]) {
        return [[PlantCatalogViewBindingController alloc] init];
    } else if ([pageName isEqualToString:@"PAGE-modern-catalog-3"]) {
        return [[SpecialPlantCatalogViewBindingController alloc] init];
    } else if ([pageName isEqualToString:@"PAGE-modern-plant-detail"]) {
        return [[PlantDetailViewBindingController alloc] init];
    }
    return nil;
}

-(id<MBContentViewWrapper>)createContentViewWrapper {
	return [[MBSlidingMenuContentViewWrapper alloc] init];
}

@end
