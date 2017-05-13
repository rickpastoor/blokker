// Twitter
if (window.location == 'https://twitter.com/') {
  var streamContainer = document.querySelector('.stream-container');
  streamContainer.parentNode.removeChild(streamContainer);
}

// YouTube
if (window.location == 'https://www.youtube.com/') {
  var mainFeed = document.querySelector('#feed-main-what_to_watch');
  mainFeed.parentNode.removeChild(mainFeed);
}

// Facebook
if (window.location == 'https://www.facebook.com/') {
  var streamPagelet = document.querySelector('#stream_pagelet');
  streamPagelet.parentNode.removeChild(streamPagelet);
}
