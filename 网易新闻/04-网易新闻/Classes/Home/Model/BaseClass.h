//
//  BaseClass.h
//
//  Created by   on 2017/3/10
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface BaseClass : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *tname;
@property (nonatomic, strong) NSString *color;
@property (nonatomic, strong) NSString *subnum;
@property (nonatomic, assign) double isHot;
@property (nonatomic, strong) NSString *tid;
@property (nonatomic, strong) NSString *img;
@property (nonatomic, assign) double isNew;
@property (nonatomic, strong) NSString *template;
@property (nonatomic, assign) double recommendOrder;
@property (nonatomic, strong) NSString *alias;
@property (nonatomic, strong) NSString *tag;
@property (nonatomic, assign) double bannerOrder;
@property (nonatomic, assign) BOOL hasCover;
@property (nonatomic, strong) NSString *cid;
@property (nonatomic, assign) BOOL hasIcon;
@property (nonatomic, strong) NSString *ename;
@property (nonatomic, strong) NSString *recommend;
@property (nonatomic, assign) BOOL headLine;
@property (nonatomic, strong) NSString *topicid;
@property (nonatomic, assign) double special;
@property (nonatomic, strong) NSString *showType;
@property (nonatomic, strong) NSString *tagDate;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
