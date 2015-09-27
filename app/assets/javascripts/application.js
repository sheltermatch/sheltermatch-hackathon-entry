// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require fullscreen/jquery.fullscreen.js

// The plugin sets the $.support.fullscreen flag:

if($.support.fullscreen){

	// ...
	// Show your full screen button here
	// ...
	console.log("Fullscreen supported!");

	$(document).ready(function(){
		$("#fsButton").on("click", function(event) {

			console.log("fsButton clicked!");

			$('#fsContent').fullScreen();

			// You can also pass a hash with properties:
			// $('#content').fullScreen({
			//  'background'    : '#111',
			//  'callback'      : function(isFullScreen){
			//      // ...
			//      // Do some cleaning up here
			//      // ...
			//  }
			// });
		});
	});
}
