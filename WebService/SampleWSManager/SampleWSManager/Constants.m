//  Constants.m
//  Created by   on 25/11/16.
//  Copyright © 2016  . All rights reserved.
//

#import "Constants.h"
//#import "CommonHeaders.h"
@implementation Constants

// Webservices Url

NSString *const URL_SIGNUP                      = BASE_URL@"user/signup";
NSString *const URL_LOGIN                       = BASE_URL@"user/login";
NSString *const URL_SOCIAL_LOGIN                = BASE_URL@"user/social-login";
NSString *const URL_FORGET_PASSWORD             = BASE_URL@"user/forget-password";
NSString *const URL_CHANGE_PASSWORD             = BASE_URL@"user/change-password";
NSString *const URL_COUNTRY_LIST                = BASE_URL@"user/countrylist";
NSString *const URL_STATE_LIST                  = BASE_URL@"user/statelist";
NSString *const URL_CITY_LIST                   = BASE_URL@"user/citylist";
NSString *const URL_STREET_LIST                 = BASE_URL@"user/streetlist";
NSString *const URL_NEWS_FEED                   = BASE_URL@"post/getpostlisting";
NSString *const URL_SEND_POST_LIKE              = BASE_URL@"post/send-post-like";
NSString *const URL_SEND_REPORT_ABUSE           = BASE_URL@"post/send-report-abuse";
NSString *const URL_UPDATE_NOTIFICATION         = BASE_URL@"master/update-notification";
NSString *const URL_SUBSCRIPTION_LIST           = BASE_URL@"master/subscriptionlist";
NSString *const URL_ADD_SUBSCRIPTION_NEWS_FEED  = BASE_URL@"master/subscribe-newsfeed";
NSString *const URL_EMERGENCY_AGENCY_LIST       = BASE_URL@"master/emergency-agency-list";
NSString *const URL_SYNC_CONTACT                = BASE_URL@"user/sync-contact";
NSString *const URL_USER_INVITE                 = BASE_URL@"user/invite";
NSString *const URL_GET_NEARBY_LISTING          = BASE_URL@"post/getnearbylisting";
NSString *const URL_SOS_CONTACT_LIST            = BASE_URL@"master/soslisting";
NSString *const URL_GET_CATEGORY_LIST           = BASE_URL@"master/category-list";
NSString *const URL_CREATE_POST                 = BASE_URL@"post/create-post";
NSString *const URL_DELETE_SOS_CONTACT          = BASE_URL@"master/deletesoscontact";
NSString *const URL_ADD_SOS_CONTACT             = BASE_URL@"master/addsoscontact";
NSString *const URL_ADD_POST_COMMENTS           = BASE_URL@"post/add-post-comment";
NSString *const URL_GET_POST_COMMENTS           = BASE_URL@"post/list-post-comment";
NSString *const URL_DELETE_SUBSCRIBE_NEWS_FEED  = BASE_URL@"master/delete-subscribe-newsfeed";
NSString *const URL_DISCLAIMER                  = BASE_URL@"master/disclaimer-cms";
NSString *const URL_ADD_MY_STREET               = BASE_URL@"master/add-my-street";
NSString *const URL_UPDATE_NEWSLETTER           = BASE_URL@"master/update-newsletter";
NSString *const URL_UPDATE_PROFILE              = BASE_URL@"user/update-profile";
NSString *const URL_ADMIN_ALERTS                = BASE_URL@"master/admin-alert-list";
NSString *const URL_NEIGHBOURWATCH              = BASE_URL@"master/neighbourhood-watch";
NSString *const URL_EQUIPMENT_PROVIDER_CATEGORY_LISTING     = BASE_URL@"master/providers-category-list";
NSString *const URL_EQUIPMENT_PROVIDER_LISTING              = BASE_URL@"master/equipment-provide-list";
NSString *const URL_EQUIPMENT_PROVIDER_INTERESTED_ENQUIRE   = BASE_URL@"master/providers-interestin";
NSString *const URL_CREATE_GROUP                = BASE_URL@"chat/creategroup";
NSString *const URL_GET_GROUP_DETAILS           = BASE_URL@"chat/getgroupdetail";
NSString *const URL_GET_GROUP_LIST              = BASE_URL@"chat/usergrouplist";
NSString *const URL_ADD_GROUP_MEMBERS           = BASE_URL@"chat/addgroupmember";
NSString *const URL_LEAVE_GROUP                 = BASE_URL@"chat/leavegroup";
NSString *const URL_UPDATE_GROUP                = BASE_URL@"chat/updategroup";
NSString *const URL_GET_CHAT_LIST               = BASE_URL@"chat/get-chat-list";
NSString *const URL_ADD_MESSAGE                 = BASE_URL@"chat/add-message";
NSString *const URL_USER_CHAT_LIST              = BASE_URL@"chat/userchatlist";
NSString *const URL_SOS_ALERT                   = BASE_URL@"master/sos-notification";
NSString *const URL_TERMS_AND_CONDITIONS        = BASE_URL@"master/cms";
NSString *const URL_BANNER_LIST                 = BASE_URL@"master/bannerlist";
NSString *const URL_GET_NOTIFICATION            = BASE_URL@"user/get-notification";
NSString *const URL_UPDATE_TOKEN                = BASE_URL@"user/update-token";
NSString *const URL_GET_POST_LIST_FROM_NEWSFEED = BASE_URL@"post/getpostlistingcity";
NSString *const URL_GET_NOTIFICATION_COUNT      = BASE_URL@"user/get-notification-count";
NSString *const URL_DELETE_NOTIFICATIONS        = BASE_URL@"user/remove-notification";
NSString *const URL_NEIGHBOURHOODWATCH_STATUS   = BASE_URL@"master/neighbourhood-watch-status";
NSString *const URL_LOGOUT                      = BASE_URL@"user/logout";
NSString *const URL_DELETE_CHAT                 = BASE_URL@"chat/del-chat";
NSString *const URL_DELETE_CHATLIST             = BASE_URL@"chat/del-chat-list";

NSString *const URL_GET_AWS_DATA                = BASE_URL@"master/s3-detail";

+(id)getViewcontrollerByID:(NSString *)vcIdentifier
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    return [storyboard instantiateViewControllerWithIdentifier:vcIdentifier];
}

UIColor *defaultSkyBlueColor() {
    return [UIColor colorWithHexString:@"0fb8d6"];
}

UIColor *defaultRedColor() {
    return [UIColor colorWithHexString:@"ff5555"];
}

UIColor *defaultYellowColor() {
    return [UIColor colorWithHexString:@"ffcf40"];
}

UIColor *dafaultOrangeColor() {
    return [UIColor colorWithHexString:@"fd8345"];
}

UIColor *defaultParrotColor() {
    return [UIColor colorWithHexString:@"aee26b"];
}

UIColor *whiteColor() {
    return [UIColor colorWithHexString:@"FFFFFF"];
}

UIColor *lighterGrayColor() {
    return [UIColor colorWithHexString:@"b2b2b2"];
}

UIColor *ashColor()
{
    return [UIColor colorWithHexString:@"e0e0e0"];
}

UIColor *PlaceholderColor() {
    return [UIColor colorWithHexString:@"656565"];
}

UIColor *PlaceholderColorWithAlpha() {
    return [UIColor colorWithHexString:@"656565"];
}



UIColor *SelectionColor() {
    return [UIColor colorWithHexString:@"d7d7d7"];
}


UIColor *radiusColor() {
    return RGBACOLOR(230, 249, 255, 0.4);
}


UIColor *radiusWhiteColor() {
    return RGBACOLOR(255, 255, 255, 0.7);
}

NSString *deviceTokenString() {
    if (![NSStandardUserDefaults objectForKey:kDeviceToken]) {
        return @"";
    }
    return [NSStandardUserDefaults objectForKey:kDeviceToken];
}

UIImage *navigationmenuImage(){
    return [UIImage imageNamed:@"menu_icon"];
}

UIImage *navigationBackImage(){
    return [UIImage imageNamed:@"white_backarrow"];
}
UIImage *PlaceholderUserImage() {
    return [UIImage imageNamed:@"userplaceholde_img"];
}

UIImage *anonymousUserImage() {
    return [UIImage imageNamed:@"anonymous_round_img"];
}


+(NSString*)fileFromTemprary:(NSString*)fileName{
  
    return[NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
}

            
+ (UIColor *)colorFromHexStringA:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:0.4];
}

UIWindow *getCurrentWindow() {
    UIWindow* window = [UIApplication sharedApplication].keyWindow;
    if (!window) {
        window = [[UIApplication sharedApplication].windows objectAtIndex:0];
    }
    return window;
}

+ (NSInteger)daysBetweenDate:(NSDate*)fromDateTime andDate:(NSDate*)toDateTime
{
    NSDate *fromDate;
    NSDate *toDate;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    [calendar rangeOfUnit:NSCalendarUnitDay startDate:&fromDate
                 interval:NULL forDate:fromDateTime];
    [calendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                 interval:NULL forDate:toDateTime];
    
    NSDateComponents *difference = [calendar components:NSCalendarUnitDay
                                               fromDate:fromDate toDate:toDate options:0];
    
    return [difference day];
}



@end
