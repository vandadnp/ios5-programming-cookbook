//
//  Retrieving_Properties_of_Address_Book_EntriesAppDelegate.m
//  Retrieving Properties of Address Book Entries
//
//  Created by Vandad Nahavandipoor on 21/07/2011.
//  Copyright 2011 Pixolity Ltd. All rights reserved.
//

#import "Retrieving_Properties_of_Address_Book_EntriesAppDelegate.h"

@implementation Retrieving_Properties_of_Address_Book_EntriesAppDelegate

@synthesize window = _window;

/* 1 */
- (BOOL)            application:(UIApplication *)application
  didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
  
  ABAddressBookRef addressBook = ABAddressBookCreate();
  
  if (addressBook != nil){
    NSLog(@"Successfully accessed the address book.");
    
    NSArray *allPeople = (__bridge_transfer NSArray *)
                          ABAddressBookCopyArrayOfAllPeople(addressBook);
    
    NSUInteger peopleCounter = 0;
    for (peopleCounter = 0;
         peopleCounter < [allPeople count];
         peopleCounter++){
      
      ABRecordRef thisPerson =  (__bridge ABRecordRef)
                                [allPeople objectAtIndex:peopleCounter];
      
      NSString *firstName = (__bridge_transfer NSString *)
        ABRecordCopyValue(thisPerson, kABPersonFirstNameProperty);
      
      NSString *lastName = (__bridge_transfer NSString *)
        ABRecordCopyValue(thisPerson, kABPersonLastNameProperty);
      
      NSString *email = (__bridge_transfer NSString *)
        ABRecordCopyValue(thisPerson, kABPersonEmailProperty);
      
      NSLog(@"First Name = %@", firstName);
      NSLog(@"Last Name = %@", lastName);
      NSLog(@"Address = %@", email);
      
    }
    
    CFRelease(addressBook);
    
  }
  
  self.window = [[UIWindow alloc] initWithFrame:
                 [[UIScreen mainScreen] bounds]];
  
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
  return YES;
}

/* 2 */
//- (void) logPersonEmails:(ABRecordRef)paramPerson{
//  
//  if (paramPerson == NULL){
//    NSLog(@"The given person is NULL.");
//    return;
//  }
//  
//  ABMultiValueRef emails = 
//    ABRecordCopyValue(paramPerson, kABPersonEmailProperty);
//  
//  if (emails == NULL){
//    NSLog(@"This contact does not have any emails.");
//    return;
//  }
//  
//  /* Go through all the emails */
//  NSUInteger emailCounter = 0; 
//  
//  for (emailCounter = 0;
//       emailCounter < ABMultiValueGetCount(emails); 
//       emailCounter++){
//    
//    /* Get the label of the email (if any) */ 
//    NSString *emailLabel = (__bridge_transfer NSString *)
//                            ABMultiValueCopyLabelAtIndex(emails, emailCounter);
//    
//    NSString *localizedEmailLabel = (__bridge_transfer NSString *)
//      ABAddressBookCopyLocalizedLabel((__bridge CFStringRef)emailLabel);
//    
//    /* And then get the email address itself */ 
//    NSString *email = (__bridge_transfer NSString *)
//                      ABMultiValueCopyValueAtIndex(emails, emailCounter);
//    
//    NSLog(@"Label = %@, Localized Label = %@, Email = %@", 
//          emailLabel, 
//          localizedEmailLabel, 
//          email);
//    
//  }
//  
//  CFRelease(emails);
//  
//}
//
//- (BOOL)            application:(UIApplication *)application
//  didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
//  
//  ABAddressBookRef addressBook = ABAddressBookCreate();
//  
//  if (addressBook != nil){
//    NSLog(@"Successfully accessed the address book.");
//    
//    NSArray *allPeople = (__bridge_transfer NSArray *)
//      ABAddressBookCopyArrayOfAllPeople(addressBook);
//    
//    NSUInteger peopleCounter = 0;
//    for (peopleCounter = 0;
//         peopleCounter < [allPeople count];
//         peopleCounter++){
//      
//      ABRecordRef thisPerson = 
//      (__bridge ABRecordRef)[allPeople objectAtIndex:peopleCounter];
//      
//      NSString *firstName = (__bridge_transfer NSString *)
//      ABRecordCopyValue(thisPerson, kABPersonFirstNameProperty);
//      
//      NSString *lastName = (__bridge_transfer NSString *)
//      ABRecordCopyValue(thisPerson, kABPersonLastNameProperty);
//      
//      NSLog(@"First Name = %@", firstName);
//      NSLog(@"Last Name = %@", lastName);
//      
//      [self logPersonEmails:thisPerson];
//      
//    }
//    
//    CFRelease(addressBook);
//    
//  }
//  
//  self.window = [[UIWindow alloc] initWithFrame:
//                 [[UIScreen mainScreen] bounds]];
//  
//  self.window.backgroundColor = [UIColor whiteColor];
//  [self.window makeKeyAndVisible];
//  return YES;
//}

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
