//
//  RecipeDetailViewController.m
//  RecipeAppParse
//
//  Created by Anuj Katiyal on 21/09/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = self.name;
    self.prepTimeLabel.text = self.prepTime;
    
    PFImageView *recipeImageView = (PFImageView *)self.recipeImageView;
    
    recipeImageView.image = [UIImage imageNamed:@"placeholder.jpg"];
    recipeImageView.file = self.image;
    [recipeImageView loadInBackground];
    
    NSMutableString *ingredientsText = [NSMutableString string];
    for (NSString* ingredient in self.ingredients) {
        [ingredientsText appendFormat:@"%@\n", ingredient];
    }
    self.ingredientsTextView.text = ingredientsText;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
