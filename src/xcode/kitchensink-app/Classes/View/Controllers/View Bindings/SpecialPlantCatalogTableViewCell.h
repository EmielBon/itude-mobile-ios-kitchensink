//
//  SpecialPlantCatalogTableViewCell.h
//  kitchensink-app
//
//  Created by Emiel Bon on 20-01-15.
//  Copyright (c) 2015 Itude Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpecialPlantCatalogTableViewCell : UITableViewCell

@property (nonatomic, strong) NSString *commonName;
@property (nonatomic, strong) NSString *botanicalName;
@property (nonatomic, assign, getter=isCoolPlant) BOOL coolPlant;

@end
