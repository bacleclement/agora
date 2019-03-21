//= require rails-ujs
//= require_tree .
//= require jquery
//= require materialize-sprockets

$('textarea').on('input', function(){
  var minHeight = parseInt($(this).css('min-height'));
  $(this).css('height', minHeight + 'px');
  var scrollHeight = $(this).get(0).scrollHeight;
  $(this).css('height', scrollHeight + 'px');
});
