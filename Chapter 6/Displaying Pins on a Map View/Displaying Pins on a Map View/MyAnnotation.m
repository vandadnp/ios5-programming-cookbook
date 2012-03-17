//
//  MyAnnotation.m
//  Maps
//
//  Created by Vandad Nahavandipoor on 11-05-10.
//  Copyright 2011  All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

CLLocationCoordinate2D coordinate;

@synthesize coordinate, title, subtitle;

- (id) initWithCoordinates:(CLLocationCoordinate2D)paramCoordinates
                     title:(NSString *)paramTitle 
                  subTitle:(NSString *)paramSubTitle{
  
  self = [super init];
  
  if (self != nil){
    coordinate = paramCoordinates;
    title = paramTitle;
    subtitle = paramSubTitle;
  }
  
  return(self);
  
}

@end
