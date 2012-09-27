//
//  ViewController.m
//  CollectionViewsForDani
//
//  Created by Hasan on 9/27/12.
//  Copyright (c) 2012 Hasoon. All rights reserved.
//

#import "ViewController.h"
#import "MyCostumCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    fishimagename = [[NSArray alloc] initWithObjects:@"fish-1.jpg", @"fish-2.jpg", @"fish-3.jpg", @"fish-4.jpg", @"fish-5.jpg", nil];
    monkyimagename = [[NSArray alloc] initWithObjects:@"images-1.jpg", @"images-2.jpg", @"images-3.jpg", @"images-4.jpg", @"images-5.jpg", @"images-6.jpg", @"images-7.jpg", nil];
    fishlable = [[NSArray alloc] initWithObjects: @"whale", @"swordfish", @"burbot", @"orc", @"shark", nil ];
    monkeylables = [[NSArray alloc] initWithObjects:@"wisdom", @"licec", @"punk", @"omg", @"funny", @"tongue", @"shy", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section

{
    if (section == 0) {
        return [fishlable count];
    }
    
    else if (section == 1)
        return [monkeylables count];
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellID";
    MyCostumCell *myCell = (MyCostumCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    if (indexPath.section == 0) {
        myCell.imageInCell.image = [UIImage imageNamed:[fishimagename objectAtIndex:indexPath.item]];
        myCell.lableInCell.text = [ fishlable objectAtIndex:indexPath.item];
    }
    else if (indexPath.section == 1)
    {
        myCell.imageInCell.image = [UIImage imageNamed:[monkyimagename objectAtIndex:indexPath.item]];
        myCell.lableInCell.text = [monkeylables objectAtIndex:indexPath.item];
    }
    return myCell;
}




@end
