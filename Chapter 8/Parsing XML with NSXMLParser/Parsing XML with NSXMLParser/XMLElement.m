//
//  XMLElement.m
//  Parsing XML with NSXMLParser
//
//  Created by Vandad Nahavandipoor on 20/07/2011.
//  Copyright 2011 Pixolity Ltd. All rights reserved.
//

#import "XMLElement.h"

@implementation XMLElement

@synthesize name;
@synthesize text;
@synthesize attributes;
@synthesize subElements;
@synthesize parent;

- (NSMutableArray *) subElements{
  if (subElements == nil){
    subElements = [[NSMutableArray alloc] init];
  }
  return subElements;
}

@end
