//
//  PlantCatalogViewBindingController.m
//  kitchensink-app
//
//  Created by Emiel Bon on 26-01-15.
//  Copyright (c) 2015 Itude Mobile. All rights reserved.
//

#import "PlantCatalogViewBindingController.h"

@implementation PlantCatalogViewBindingController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // The following code creates a binder that binds the plant property elements to a custom UITableViewCell from a xib.
    // If an outcome is present for the Coolness element, it will be fired when the button is tapped (not the case in
    // this example). Make sure to set the bindingIdentifiers appropriately in the User Defined Runtime Attributes!
    MBPageBinder *binder = [MBPageBinder binderWithViewController:self];
    UINib *plantCellNib = [UINib nibWithNibName:@"PlantCatalogTableViewCell" bundle:nil];
    [binder registerBinder:[MBSimpleTableViewBinder binderWithIdentifier:@"PlantList" cellNib:plantCellNib]];
    [binder registerBinder:[MBSimpleTextBinder      binderWithIdentifier:@"Light"]];
    [binder registerBinder:[MBSimpleTextBinder      binderWithIdentifier:@"CommonName"]];
    [binder registerBinder:[MBSimpleTextBinder      binderWithIdentifier:@"BotanicalName"]];
    [binder registerBinder:[MBButtonBinder          binderWithIdentifier:@"Coolness"]];
    [binder bind];
}

@end
