//
//  BaseClass.m
//
//  Created by   on 2017/3/10
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import "BaseClass.h"


NSString *const kBaseClassTname = @"tname";
NSString *const kBaseClassColor = @"color";
NSString *const kBaseClassSubnum = @"subnum";
NSString *const kBaseClassIsHot = @"isHot";
NSString *const kBaseClassTid = @"tid";
NSString *const kBaseClassImg = @"img";
NSString *const kBaseClassIsNew = @"isNew";
NSString *const kBaseClassTemplate = @"template";
NSString *const kBaseClassRecommendOrder = @"recommendOrder";
NSString *const kBaseClassAlias = @"alias";
NSString *const kBaseClassTag = @"tag";
NSString *const kBaseClassBannerOrder = @"bannerOrder";
NSString *const kBaseClassHasCover = @"hasCover";
NSString *const kBaseClassCid = @"cid";
NSString *const kBaseClassHasIcon = @"hasIcon";
NSString *const kBaseClassEname = @"ename";
NSString *const kBaseClassRecommend = @"recommend";
NSString *const kBaseClassHeadLine = @"headLine";
NSString *const kBaseClassTopicid = @"topicid";
NSString *const kBaseClassSpecial = @"special";
NSString *const kBaseClassShowType = @"showType";
NSString *const kBaseClassTagDate = @"tagDate";


@interface BaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation BaseClass

@synthesize tname = _tname;
@synthesize color = _color;
@synthesize subnum = _subnum;
@synthesize isHot = _isHot;
@synthesize tid = _tid;
@synthesize img = _img;
@synthesize isNew = _isNew;
@synthesize template = _template;
@synthesize recommendOrder = _recommendOrder;
@synthesize alias = _alias;
@synthesize tag = _tag;
@synthesize bannerOrder = _bannerOrder;
@synthesize hasCover = _hasCover;
@synthesize cid = _cid;
@synthesize hasIcon = _hasIcon;
@synthesize ename = _ename;
@synthesize recommend = _recommend;
@synthesize headLine = _headLine;
@synthesize topicid = _topicid;
@synthesize special = _special;
@synthesize showType = _showType;
@synthesize tagDate = _tagDate;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.tname = [self objectOrNilForKey:kBaseClassTname fromDictionary:dict];
            self.color = [self objectOrNilForKey:kBaseClassColor fromDictionary:dict];
            self.subnum = [self objectOrNilForKey:kBaseClassSubnum fromDictionary:dict];
            self.isHot = [[self objectOrNilForKey:kBaseClassIsHot fromDictionary:dict] doubleValue];
            self.tid = [self objectOrNilForKey:kBaseClassTid fromDictionary:dict];
            self.img = [self objectOrNilForKey:kBaseClassImg fromDictionary:dict];
            self.isNew = [[self objectOrNilForKey:kBaseClassIsNew fromDictionary:dict] doubleValue];
            self.template = [self objectOrNilForKey:kBaseClassTemplate fromDictionary:dict];
            self.recommendOrder = [[self objectOrNilForKey:kBaseClassRecommendOrder fromDictionary:dict] doubleValue];
            self.alias = [self objectOrNilForKey:kBaseClassAlias fromDictionary:dict];
            self.tag = [self objectOrNilForKey:kBaseClassTag fromDictionary:dict];
            self.bannerOrder = [[self objectOrNilForKey:kBaseClassBannerOrder fromDictionary:dict] doubleValue];
            self.hasCover = [[self objectOrNilForKey:kBaseClassHasCover fromDictionary:dict] boolValue];
            self.cid = [self objectOrNilForKey:kBaseClassCid fromDictionary:dict];
            self.hasIcon = [[self objectOrNilForKey:kBaseClassHasIcon fromDictionary:dict] boolValue];
            self.ename = [self objectOrNilForKey:kBaseClassEname fromDictionary:dict];
            self.recommend = [self objectOrNilForKey:kBaseClassRecommend fromDictionary:dict];
            self.headLine = [[self objectOrNilForKey:kBaseClassHeadLine fromDictionary:dict] boolValue];
            self.topicid = [self objectOrNilForKey:kBaseClassTopicid fromDictionary:dict];
            self.special = [[self objectOrNilForKey:kBaseClassSpecial fromDictionary:dict] doubleValue];
            self.showType = [self objectOrNilForKey:kBaseClassShowType fromDictionary:dict];
            self.tagDate = [self objectOrNilForKey:kBaseClassTagDate fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.tname forKey:kBaseClassTname];
    [mutableDict setValue:self.color forKey:kBaseClassColor];
    [mutableDict setValue:self.subnum forKey:kBaseClassSubnum];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isHot] forKey:kBaseClassIsHot];
    [mutableDict setValue:self.tid forKey:kBaseClassTid];
    [mutableDict setValue:self.img forKey:kBaseClassImg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isNew] forKey:kBaseClassIsNew];
    [mutableDict setValue:self.template forKey:kBaseClassTemplate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.recommendOrder] forKey:kBaseClassRecommendOrder];
    [mutableDict setValue:self.alias forKey:kBaseClassAlias];
    [mutableDict setValue:self.tag forKey:kBaseClassTag];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bannerOrder] forKey:kBaseClassBannerOrder];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasCover] forKey:kBaseClassHasCover];
    [mutableDict setValue:self.cid forKey:kBaseClassCid];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasIcon] forKey:kBaseClassHasIcon];
    [mutableDict setValue:self.ename forKey:kBaseClassEname];
    [mutableDict setValue:self.recommend forKey:kBaseClassRecommend];
    [mutableDict setValue:[NSNumber numberWithBool:self.headLine] forKey:kBaseClassHeadLine];
    [mutableDict setValue:self.topicid forKey:kBaseClassTopicid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.special] forKey:kBaseClassSpecial];
    [mutableDict setValue:self.showType forKey:kBaseClassShowType];
    [mutableDict setValue:self.tagDate forKey:kBaseClassTagDate];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description  {
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict {
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];

    self.tname = [aDecoder decodeObjectForKey:kBaseClassTname];
    self.color = [aDecoder decodeObjectForKey:kBaseClassColor];
    self.subnum = [aDecoder decodeObjectForKey:kBaseClassSubnum];
    self.isHot = [aDecoder decodeDoubleForKey:kBaseClassIsHot];
    self.tid = [aDecoder decodeObjectForKey:kBaseClassTid];
    self.img = [aDecoder decodeObjectForKey:kBaseClassImg];
    self.isNew = [aDecoder decodeDoubleForKey:kBaseClassIsNew];
    self.template = [aDecoder decodeObjectForKey:kBaseClassTemplate];
    self.recommendOrder = [aDecoder decodeDoubleForKey:kBaseClassRecommendOrder];
    self.alias = [aDecoder decodeObjectForKey:kBaseClassAlias];
    self.tag = [aDecoder decodeObjectForKey:kBaseClassTag];
    self.bannerOrder = [aDecoder decodeDoubleForKey:kBaseClassBannerOrder];
    self.hasCover = [aDecoder decodeBoolForKey:kBaseClassHasCover];
    self.cid = [aDecoder decodeObjectForKey:kBaseClassCid];
    self.hasIcon = [aDecoder decodeBoolForKey:kBaseClassHasIcon];
    self.ename = [aDecoder decodeObjectForKey:kBaseClassEname];
    self.recommend = [aDecoder decodeObjectForKey:kBaseClassRecommend];
    self.headLine = [aDecoder decodeBoolForKey:kBaseClassHeadLine];
    self.topicid = [aDecoder decodeObjectForKey:kBaseClassTopicid];
    self.special = [aDecoder decodeDoubleForKey:kBaseClassSpecial];
    self.showType = [aDecoder decodeObjectForKey:kBaseClassShowType];
    self.tagDate = [aDecoder decodeObjectForKey:kBaseClassTagDate];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_tname forKey:kBaseClassTname];
    [aCoder encodeObject:_color forKey:kBaseClassColor];
    [aCoder encodeObject:_subnum forKey:kBaseClassSubnum];
    [aCoder encodeDouble:_isHot forKey:kBaseClassIsHot];
    [aCoder encodeObject:_tid forKey:kBaseClassTid];
    [aCoder encodeObject:_img forKey:kBaseClassImg];
    [aCoder encodeDouble:_isNew forKey:kBaseClassIsNew];
    [aCoder encodeObject:_template forKey:kBaseClassTemplate];
    [aCoder encodeDouble:_recommendOrder forKey:kBaseClassRecommendOrder];
    [aCoder encodeObject:_alias forKey:kBaseClassAlias];
    [aCoder encodeObject:_tag forKey:kBaseClassTag];
    [aCoder encodeDouble:_bannerOrder forKey:kBaseClassBannerOrder];
    [aCoder encodeBool:_hasCover forKey:kBaseClassHasCover];
    [aCoder encodeObject:_cid forKey:kBaseClassCid];
    [aCoder encodeBool:_hasIcon forKey:kBaseClassHasIcon];
    [aCoder encodeObject:_ename forKey:kBaseClassEname];
    [aCoder encodeObject:_recommend forKey:kBaseClassRecommend];
    [aCoder encodeBool:_headLine forKey:kBaseClassHeadLine];
    [aCoder encodeObject:_topicid forKey:kBaseClassTopicid];
    [aCoder encodeDouble:_special forKey:kBaseClassSpecial];
    [aCoder encodeObject:_showType forKey:kBaseClassShowType];
    [aCoder encodeObject:_tagDate forKey:kBaseClassTagDate];
}

- (id)copyWithZone:(NSZone *)zone {
    BaseClass *copy = [[BaseClass alloc] init];
    
    
    
    if (copy) {

        copy.tname = [self.tname copyWithZone:zone];
        copy.color = [self.color copyWithZone:zone];
        copy.subnum = [self.subnum copyWithZone:zone];
        copy.isHot = self.isHot;
        copy.tid = [self.tid copyWithZone:zone];
        copy.img = [self.img copyWithZone:zone];
        copy.isNew = self.isNew;
        copy.template = [self.template copyWithZone:zone];
        copy.recommendOrder = self.recommendOrder;
        copy.alias = [self.alias copyWithZone:zone];
        copy.tag = [self.tag copyWithZone:zone];
        copy.bannerOrder = self.bannerOrder;
        copy.hasCover = self.hasCover;
        copy.cid = [self.cid copyWithZone:zone];
        copy.hasIcon = self.hasIcon;
        copy.ename = [self.ename copyWithZone:zone];
        copy.recommend = [self.recommend copyWithZone:zone];
        copy.headLine = self.headLine;
        copy.topicid = [self.topicid copyWithZone:zone];
        copy.special = self.special;
        copy.showType = [self.showType copyWithZone:zone];
        copy.tagDate = [self.tagDate copyWithZone:zone];
    }
    
    return copy;
}


@end
