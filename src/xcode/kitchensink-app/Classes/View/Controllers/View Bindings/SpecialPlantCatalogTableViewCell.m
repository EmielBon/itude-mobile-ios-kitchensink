//
//  SpecialPlantCatalogTableViewCell.m
//  kitchensink-app
//
//  Created by Emiel Bon on 20-01-15.
//  Copyright (c) 2015 Itude Mobile. All rights reserved.
//

#import "SpecialPlantCatalogTableViewCell.h"

@interface SpecialPlantCatalogTableViewCell ()

@property (strong, nonatomic) IBOutlet UILabel *commonNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *botanicalNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *coolPlantLabel;

@end

@implementation SpecialPlantCatalogTableViewCell

- (NSString *)commonName
{
    return self.commonNameLabel.text;
}

- (void)setCommonName:(NSString *)commonName
{
    self.commonNameLabel.text = commonName;
}

- (NSString *)botanicalName
{
    return self.botanicalNameLabel.text;
}

- (void)setBotanicalName:(NSString *)botanicalName
{
    self.botanicalNameLabel.text = botanicalName;
}

- (void)setCoolPlant:(BOOL)coolPlant
{
    _coolPlant = coolPlant;
    self.coolPlantLabel.text = (coolPlant) ? @"❄️+🌿=😃👍" : @"❄️+🌿=😢👎";
}


@end
