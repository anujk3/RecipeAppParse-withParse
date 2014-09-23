//
//  RecipeDetailViewController.h
//  RecipeAppParse
//
//  Created by Anuj Katiyal on 21/09/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"
#import <Parse/Parse.h>

@interface RecipeDetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UITextView *ingredientsTextView;

@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *prepTime; // preparation time
@property (nonatomic, strong) PFFile *image; // image filename of recipe
@property (nonatomic, strong) NSArray *ingredients;

@end
