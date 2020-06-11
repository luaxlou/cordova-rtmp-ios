"use strict";
function VideoStreamer() {
}


var exec = require('cordova/exec');
 
VideoStreamer.prototype.streamRTMP = function(uri, success, failure) {
    // fire
    exec(
        success,
        failure,
        'CordovaRTMPiOS',
        'streamRTMP',
        [uri]
    );
};

VideoStreamer.prototype.streamRTMPAuth = function(uri, username, password, success, failure) {
    // fire
    exec(
        success,
        failure,
        'CordovaRTMPiOS',
        'streamRTMPAuth',
        [uri, username, password]
    );
};

VideoStreamer.prototype.streamStop = function(success, failure) {
    // fire
    exec(
        success,
        failure,
        'CordovaRTMPiOS',
        'streamStop',
        []
    );
};

VideoStreamer.prototype.echo = function(arg0, success, error) {
    exec(success, error, "CordovaRTMPiOS", "echo", [arg0]);
};


VideoStreamer.install = function () {
	if (!window.plugins) {
		window.plugins = {};
	}
	window.plugins.videoStreamer = new VideoStreamer();
	return window.plugins.videoStreamer;
};

cordova.addConstructor(VideoStreamer.install);
