//
//  NTStoryModulePlugin.h
//  Nestled Time
//
//  Created by Anuj on 28/02/18.
//

#import <Cordova/CDVPlugin.h>

typedef enum : NSUInteger {
    PostsTab = 0,
    WorldsTab = 1,
    PlusIconTab = 2,
    NotificationsTab = 3
    MyAccountTab = 4,
} SelectedTab;


@interface NTTabbarModulePlugin : CDVPlugin<NewMemoryVCDelegate>

@property (copy)   NSString* callbackId;

@property (nonatomic, strong) NSString * loginUserFirebaseUid;
@property (nonatomic, strong) NSString * loginUserFirebaseEmail;
@property (nonatomic, strong) NSString * loginUserFirebaseName;
@property (nonatomic, strong) NSString * loginUserFirebaseProfilePicBlobId;

@property (nonatomic, assign) SelectedTab selectedTab;

- (void)callTabbarModuleWithInfo:(CDVInvokedUrlCommand *)command;

@end
