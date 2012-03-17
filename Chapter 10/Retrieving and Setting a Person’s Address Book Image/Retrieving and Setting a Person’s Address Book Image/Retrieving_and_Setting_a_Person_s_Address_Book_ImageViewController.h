//
//  Retrieving_and_Setting_a_Person_s_Address_Book_ImageViewController.h
//  Retrieving and Setting a Person’s Address Book Image
//
//  Created by Vandad Nahavandipoor on 21/07/2011.
//  Copyright 2011 Pixolity Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>

@interface Retrieving_and_Setting_a_Person_s_Address_Book_ImageViewController
           : UIViewController

@property (nonatomic, strong) UILabel *labelOldImage;
@property (nonatomic, strong) UIImageView *imageViewOld;

@property (nonatomic, strong) UILabel *labelNewImage;
@property (nonatomic, strong) UIImageView *imageViewNew;

@end
