//
//  NTStoryModulePlugin.m
//  Nestled Time
//
//  Created by Anuj on 28/02/18.
//

#import "NTTabbarModulePlugin.h"

@implementation NTTabbarModulePlugin

- (void)callTabbarModuleWithInfo:(CDVInvokedUrlCommand *)command{
    NSDictionary *options = [command.arguments objectAtIndex: 0];
    
    self.callbackId = command.callbackId;
    
    self.loginUserFirebaseUid = options[@"loginUserFirebaseUid"];
    self.loginUserFirebaseEmail = options[@"loginUserFirebaseEmail"];
    self.loginUserFirebaseName = options[@"loginUserFirebaseName"];
    self.loginUserFirebaseProfilePicBlobId = options[@"loginUserFirebaseProfilePicBlobId"];
    
    self.selectedTab = options[@"selectedTab"];

    
}

#pragma mark Memory Controller Delegate Methods


- (void)callBackToHybridWithInfo:(NSDictionary *)info{
    CDVPluginResult* result = nil;
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:info];
    [self.commandDelegate sendPluginResult:result callbackId:self.callbackId];
}





@end
