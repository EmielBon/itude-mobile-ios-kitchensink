//
//  PlantCatalogBindingViewController.m
//  kitchensink-app
//
//  Created by Emiel Bon on 15-01-15.
//  Copyright (c) 2015 Itude Mobile. All rights reserved.
//

#import "SpecialPlantCatalogViewBindingController.h"
#import "SpecialPlantBinder.h"

@implementation SpecialPlantCatalogViewBindingController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // The following code creates a binder that binds the Plant element to a special UITableViewCell with
    // a bindingIdentifier set to "Plant". The cell (SpecialPlantCatalogTableViewCell) is special because
    // it is loaded from a xib AND has its own custom API. It has text labels, but they are private and
    // you don't set their text directly. You set only the public properties of the cell and it will
    // determine how it is placed in the text labels (e.g. with special formatting, like for the Coolness
    // element).
    
    // For this scenario you would create your own subclass of MBBaseViewBinder. See SpecialPlantBinder
    // for details.
    
    MBPageBinder *binder = [MBPageBinder binderWithViewController:self];
    UINib *plantCellNib = [UINib nibWithNibName:@"SpecialPlantCatalogTableViewCell" bundle:nil];
    [binder registerBinder:[MBSimpleTableViewBinder binderWithIdentifier:@"PlantList" cellNib:plantCellNib]];
    [binder registerBinder:[SpecialPlantBinder      binderWithIdentifier:@"Plant"]];
    [binder bind];
}

@end
