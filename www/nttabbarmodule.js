/*global cordova,window,console*/
/**
 * Story Module plugin for Cordova
 *
 * Developed by Anuj for Nestled Time
 */

var NTTabbarModule = function() {

};

NTTabbarModule.prototype.SelectedTab = {
	PostsTab: 0,
	WorldsTab: 1,
	PlusIconTab:2,
	NotificationsTab:3
};




NTTabbarModule.prototype.callTabbarModuleWithInfo = function(success, fail, options) {
	if (!options) {
		options = {};
	}


	var params = {
		selectedTab: options.selectedTab,
		loginUserFirebaseUid: options.loginUserFirebaseUid,
		loginUserFirebaseEmail: options.loginUserFirebaseEmail,
		loginUserFirebaseName: options.loginUserFirebaseName,
		loginUserFirebaseProfilePicBlobId: options.loginUserFirebaseProfilePicBlobId,
	};

	return cordova.exec(success, fail, "NTTabbarModule", "callTabbarModuleWithInfo", [params]);
};

window.NTTabbarModule = new NTTabbarModule();