//  Constants.h
//  Created by   on 25/11/16.
//  Copyright © 2016  . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Constants : NSObject

#define kNavigationBarHeight 64.0
#define kPadding 15.0
#define kFacebookAPIKey @""

#define KgoogleMapAPIKey @"AIzaSyDvofD4CfmwwDsYMTsQqLVOsUpgY17HcjE"

//------------------ AMAZON DETAILS -------------//


#define kAWSAccessKey               @"access_key"
#define kAWSSecretKey               @"secret_key"

//Keys
#define kAmazonCredentialDictionaryKey  @"AmazonCredentialDictionaryKey"


typedef enum{
    LoginTypeNormal = 1,
    LoginTypeFacebook = 2,
    LoginTypeGoogle = 3,
} LoginType;


typedef enum{
    SocialTypeGoogle,
    SocialTypeFacebook,
}SocialType;

typedef enum{
    PushnotificationService,
    NewsLetterService,
}ServiceType;

typedef enum{
    NEWS_FEED = 0,
    NEARBY,
    CREATEPOST,
    CHAT,
    NOTIFICATION,
    ADMINALERT,
    INVITE,
    EMERGENCY_AGENCIES,
    SECURITY_EQUIPMENT_PROVIDER,
    SETTING
} SideMenuItem;


typedef enum{
    TERMS_AND_CONDITION = 0,
    PUSHNOTIFICATIONS,
    NEWSLETTER,
    CHANGEPASSWORD,
    ADDMYSTREET,
    NEIGHBOURHOOD_WATCH
} SettingItem;


typedef enum{
    CONTACTUS = 0,
    ABOUT,
    TERMSANDCONDITION,
    SIGNOUT
} CMSItem;

enum
{
    ConversionTypeChat = 1,
    ConversionTypeGroup = 2,
    ConversionTypeContact = 3
};
typedef NSUInteger ConversionType;


enum
{
    NotificationTypeOneToOneChatReceived=0,
    NotificationTypeGroupChatReceived =1,
    NotificationTypeGroupMemberAdded = 2,
    NotificationTypeGroupMemeberRemoved = 3,
    NotificationTypeSOSAlert=4,
    NotificationTypeAdminAlert = 5,
    NotificationTypePostLike = 6,
    NotificationTypePostDisLike = 7,
    NotificationTypeCommentOnPost = 8,
    NotificationTypeCreatePost = 9,
    NotificationTypeNeighbourhoodRequestRejected = 10,
    NotificationTypeNeighbourhoodRequestAccepted = 11

};
typedef NSUInteger NotificationType;


typedef NSUInteger CountryType;

#define kCommonAppTitle @"Crime Chat"
#define kDeviceTokenKey  @"device_token"
#define kDeviceTypeKey @"device_type"
#define kDeviceToken @"DeviceToken"
#define kDeviceType @"ios"
#define kUserProfilePicName @"user_profile_pic.png"
#define kCommonDateFormat @"dd/MM/yyyy"
#define kUserRememberMe @"UserRememberMe"
#define kFilterValue @"FilterValue"



#define kSyncCompletionNoification          @"SyncCompletionNoification"
#define kMessageReceivedNoification         @"MessageReceivedNoification"
#define kMessageReceivedNotificatioForConversation @"kMessageReceivedNotificatioForConversation"
#define kAdminAlertReceivedNoification         @"AdminAlertReceivedNoification"
#define kRemoveMembers                      @"RemoveMembers"
#define kNotificatoinCount                      @"NotificationCount"


#define kDocumentFolderPath [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]
#define kProfileFolderName @"ContactImage"
#define kContactImageDirPath [NSString stringWithFormat:@"%@/%@", kDocumentFolderPath, kProfileFolderName]
#define kContactImageFullPath(recordId) [NSString stringWithFormat:@"%@/%@/contact_%@.jpg", kDocumentFolderPath, kProfileFolderName, recordId]
#define kContactImageDBPath(recordId) [NSString stringWithFormat:@"%@/contact_%@.jpg",  kProfileFolderName, recordId]

// Chat Media Path.
#define kChatMediaFolderPath [kDocumentFolderPath stringByAppendingPathComponent:@"ChatMedia"]
#define kChatMediaItemPath(fileName) [kChatMediaFolderPath stringByAppendingPathComponent:fileName]

// TimeStamp
#define TimeStamp [NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970] * 1000]


// Webservices Url for Live
#define BASE_URL    @"http://api.crimechat.org/api/web/v1/"
//#define BASE_URL @"http://13.210.19.34/api/web/v1/"


// Webservices Url for clientweb
//#define BASE_URL @"http://clientveb.net/clients/2016/crimechat/api/web/v1/"

//Application Share Url
//#define DOWNLOAD_URL @"http://clientveb.net/clients/2016/crimechat/site/share"

#define DOWNLOAD_URL @"https://goo.gl/BEAsG5"


#pragma mark -  ----------------Web Service Constant URL--------------

extern NSString *const URL_SIGNUP;
extern NSString *const URL_LOGIN;
extern NSString *const URL_FORGET_PASSWORD;
extern NSString *const URL_CHANGE_PASSWORD;
extern NSString *const URL_SOCIAL_LOGIN;
extern NSString *const URL_COUNTRY_LIST;
extern NSString *const URL_STATE_LIST;
extern NSString *const URL_CITY_LIST;
extern NSString *const URL_STREET_LIST;
extern NSString *const URL_NEWS_FEED;
extern NSString *const URL_SEND_POST_LIKE;
extern NSString *const URL_SEND_REPORT_ABUSE;
extern NSString *const URL_UPDATE_NOTIFICATION;
extern NSString *const URL_SUBSCRIPTION_LIST;
extern NSString *const URL_ADD_SUBSCRIPTION_NEWS_FEED;
extern NSString *const URL_EMERGENCY_AGENCY_LIST;
extern NSString *const URL_SYNC_CONTACT ;
extern NSString *const URL_USER_INVITE;
extern NSString *const URL_GET_NEARBY_LISTING;
extern NSString *const URL_SOS_CONTACT_LIST;
extern NSString *const URL_GET_CATEGORY_LIST;
extern NSString *const URL_CREATE_POST;
extern NSString *const URL_DELETE_SOS_CONTACT;
extern NSString *const URL_ADD_SOS_CONTACT;
extern NSString *const URL_DELETE_SUBSCRIBE_NEWS_FEED;
extern NSString *const URL_ADD_POST_COMMENTS;
extern NSString *const URL_GET_POST_COMMENTS;
extern NSString *const URL_UPDATE_PROFILE;
extern NSString *const URL_DISCLAIMER;
extern NSString *const URL_ADD_MY_STREET;
extern NSString *const URL_UPDATE_NEWSLETTER;
extern NSString *const URL_CHANGE_PASSWORD;
extern NSString *const URL_ADMIN_ALERTS;
extern NSString *const URL_NEIGHBOURWATCH;
extern NSString *const URL_EQUIPMENT_PROVIDER_CATEGORY_LISTING;
extern NSString *const URL_EQUIPMENT_PROVIDER_LISTING;
extern NSString *const URL_EQUIPMENT_PROVIDER_INTERESTED_ENQUIRE;
extern NSString *const URL_CREATE_GROUP;
extern NSString *const URL_GET_GROUP_DETAILS;
extern NSString *const URL_GET_GROUP_LIST;
extern NSString *const URL_ADD_GROUP_MEMBERS;
extern NSString *const URL_LEAVE_GROUP;
extern NSString *const URL_UPDATE_GROUP;
extern NSString *const URL_GET_CHAT_LIST;
extern NSString *const URL_ADD_MESSAGE;
extern NSString *const URL_SOS_ALERT;
extern NSString *const URL_TERMS_AND_CONDITIONS;
extern NSString *const URL_USER_CHAT_LIST;
extern NSString *const URL_BANNER_LIST;
extern NSString *const URL_GET_NOTIFICATION;
extern NSString *const URL_UPDATE_TOKEN;
extern NSString *const URL_GET_POST_LIST_FROM_NEWSFEED;
extern NSString *const URL_GET_NOTIFICATION_COUNT;
extern NSString *const URL_DELETE_NOTIFICATIONS;
extern NSString *const URL_NEIGHBOURHOODWATCH_STATUS;
extern NSString *const URL_LOGOUT;
extern NSString *const URL_DELETE_CHAT;
extern NSString *const URL_DELETE_CHATLIST;
extern NSString *const URL_GET_AWS_DATA;

#define kStoryboard [UIStoryboard storyboardWithName:((IS_IPAD())?@"Main_iPad":@"Main") bundle:nil]
#define kGetController(name) [self.storyboard instantiateViewControllerWithIdentifier:name]


+(id)getViewcontrollerByID:(NSString *)vcIdentifier ;


UIColor *defaultSkyBlueColor();
UIColor *defaultRedColor();
UIColor *defaultYellowColor();
UIColor *dafaultOrangeColor();
UIColor *defaultParrotColor();
UIColor *whiteColor();
UIColor *lighterGrayColor();
UIColor *ashColor();
UIColor *PlaceholderColor();
UIColor *radiusColor();
UIColor *SelectionColor();
UIColor *PlaceholderColorWithAlpha();
UIColor *radiusWhiteColor();

+ (UIColor *)colorFromHexStringA:(NSString *)hexString ;
UIImage *navigationmenuImage();
UIImage *navigationBackImage();
UIImage *PlaceholderUserImage();
UIImage *anonymousUserImage() ;

NSString *deviceTokenString();

+(NSString*)fileFromTemprary:(NSString*)fileName;
UIWindow *getCurrentWindow();
+ (NSInteger)daysBetweenDate:(NSDate*)fromDateTime andDate:(NSDate*)toDateTime;




@end
