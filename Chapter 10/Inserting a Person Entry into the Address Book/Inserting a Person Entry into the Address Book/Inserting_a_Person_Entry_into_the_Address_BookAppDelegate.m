//
//  Inserting_a_Person_Entry_into_the_Address_BookAppDelegate.m
//  Inserting a Person Entry into the Address Book
//
//  Created by Vandad Nahavandipoor on 21/07/2011.
//  Copyright 2011 Pixolity Ltd. All rights reserved.
//

#import "Inserting_a_Person_Entry_into_the_Address_BookAppDelegate.h"

@implementation Inserting_a_Person_Entry_into_the_Address_BookAppDelegate

@synthesize window = _window;

- (ABRecordRef) newPersonWithFirstName:(NSString *)paramFirstName
                              lastName:(NSString *)paramLastName
                         inAddressBook:(ABAddressBookRef)paramAddressBook{
  
  ABRecordRef result = NULL;
  
  if (paramAddressBook == NULL){
    NSLog(@"The address book is NULL.");
    return NULL;
  }
  
  if ([paramFirstName length] == 0 &&
      [paramLastName length] == 0){
    NSLog(@"First name and last name are both empty.");
    return NULL;
  }
  
  result = ABPersonCreate();
  
  if (result == NULL){
    NSLog(@"Failed to create a new person.");
    return NULL;
  }
  
  BOOL couldSetFirstName = NO;
  BOOL couldSetLastName = NO;
  CFErrorRef setFirstNameError = NULL;
  CFErrorRef setLastNameError = NULL;
  
  couldSetFirstName = ABRecordSetValue(result,
                                       kABPersonFirstNameProperty,
                                       (__bridge CFTypeRef)paramFirstName,
                                       &setFirstNameError);
  
  couldSetLastName = ABRecordSetValue(result,
                                      kABPersonLastNameProperty,
                                      (__bridge CFTypeRef)paramLastName,
                                      &setLastNameError);
  
  CFErrorRef couldAddPersonError = NULL;
  BOOL couldAddPerson = ABAddressBookAddRecord(paramAddressBook,
                                               result,
                                               &couldAddPersonError);
  
  if (couldAddPerson){
    NSLog(@"Successfully added the person.");
  } else {
    NSLog(@"Failed to add the person.");
    CFRelease(result);
    result = NULL;
    return result;
  }
  
  if (ABAddressBookHasUnsavedChanges(paramAddressBook)){
    
    CFErrorRef couldSaveAddressBookError = NULL;
    BOOL couldSaveAddressBook = ABAddressBookSave(paramAddressBook, 
                                                  &couldSaveAddressBookError);
    
    if (couldSaveAddressBook){
      NSLog(@"Successfully saved the address book.");
    } else {
      NSLog(@"Failed to save the address book.");
    }
  }
  
  if (couldSetFirstName &&
      couldSetLastName){
    NSLog(@"Successfully set the first name and the last name of the person.");
  } else {
    NSLog(@"Failed to set the first name and/or last name of the person.");
  }
  
  return result;
  
}

- (BOOL)            application:(UIApplication *)application 
  didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
  
  ABAddressBookRef addressBook = ABAddressBookCreate();
  
  if (addressBook != NULL){
    
    ABRecordRef anthonyRobbins = [self newPersonWithFirstName:@"Anthony"
                                                     lastName:@"Robbins"
                                                inAddressBook:addressBook];
    
    if (anthonyRobbins != NULL){
      NSLog(@"Anthony Robbins' record is inserted into the Address Book.");
      CFRelease(anthonyRobbins);
    }
    
    CFRelease(addressBook);
  }
  
  self.window = [[UIWindow alloc] initWithFrame:
                 [[UIScreen mainScreen] bounds]];
  // Override point for customization after application launch.
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  /*
   Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
   Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
   */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  /*
   Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
   If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
   */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  /*
   Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
   */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  /*
   Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
   */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  /*
   Called when the application is about to terminate.
   Save data if appropriate.
   See also applicationDidEnterBackground:.
   */
}

@end
