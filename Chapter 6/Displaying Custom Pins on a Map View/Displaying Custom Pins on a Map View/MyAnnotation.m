//
//  MyAnnotation.m
//  Maps
//
//  Created by Vandad Nahavandipoor on 10-05-10.
//  Copyright 2010  All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

@synthesize coordinate;
@synthesize title;
@synthesize subtitle;
@synthesize pinColor;

+ (NSString *)   reusableIdentifierforPinColor
                 :(MKPinAnnotationColor)ParamColor{
  
  NSString *result = nil;
  
  switch (ParamColor){
    case MKPinAnnotationColorRed:{
      result = REUSABLE_PIN_RED;
      break;
    }
    case MKPinAnnotationColorGreen:{
      result = REUSABLE_PIN_GREEN;
      break;
    }
    case MKPinAnnotationColorPurple:{
      result = REUSABLE_PIN_PURPLE;
      break;
    }
  }
  
  return result;
}

- (id) initWithCoordinates:(CLLocationCoordinate2D)paramCoordinates 
                     title:(NSString*)paramTitle 
                  subTitle:(NSString*)paramSubTitle{
  
  self = [super init];
  
  if (self != nil){
    coordinate = paramCoordinates;
    title = paramTitle;
    subtitle = paramSubTitle;
    pinColor = MKPinAnnotationColorGreen;
  }
  
  return self;
}

@end
