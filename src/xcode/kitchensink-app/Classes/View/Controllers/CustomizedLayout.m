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

#import "CustomizedLayout.h"

@implementation CustomizedLayout

-(void)viewDidLoad {
    [super viewDidLoad];
    MBPanel *myPanel = [self.page firstChildOfKind:[MBPanel class] filterUsingSelector:@selector(name) havingValue:@"myPanel"];
    UIView *panelView = [[MBViewBuilderFactory sharedInstance].panelViewBuilderFactory buildPanelView:myPanel forParent:self.view withMaxBounds:CGRectZero viewState:self.page.currentViewState];
    // instead of hard coding the dimensions you can design the view in interface builder, read the frame and use it here to dimension and position the view with the generated view.
    panelView.frame = CGRectMake(50,50,200,250);
}

@end
