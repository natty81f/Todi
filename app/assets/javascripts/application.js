
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require zepto
//= require custom.modernizr
//= require foundation.min
//= require foundation.reveal
//= require_tree .

$(function() {
	$('.reveal-modal').each(function(index, item) {
		var id = $(item).attr('id');
		$('[data-reveal-id='+id+']').click(function(event) {
			var emoticon = event.currentTarget.dataset.emoticon;
			$('#emoticon').val(emoticon);
			console.log(emoticon);
			$(item).foundation('reveal', 'open');
			$("#emotion_type").val(emoticon);
			return false;
		});
	});
	$('body').on('click', '.reveal-modal-bg, .close-reveal-modal', function(event){
		$('.reveal-modal').foundation('reveal', 'close');
	});
});
