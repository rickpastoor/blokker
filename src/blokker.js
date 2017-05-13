function blockStuff() {
  // Twitter
  if (window.location == 'https://twitter.com/') {
    var streamContainer = document.querySelector('.stream-container');
    if (streamContainer) {
      streamContainer.parentNode.removeChild(streamContainer);
    }
  }

  // YouTube
  if (window.location == 'https://www.youtube.com/') {
    var mainFeed = document.querySelector('#feed-main-what_to_watch');
    if (mainFeed) {
      mainFeed.parentNode.removeChild(mainFeed);
    }
  }

  // Facebook
  if (window.location == 'https://www.facebook.com/') {
    var streamPagelet = document.querySelector('#stream_pagelet');
    if (streamPagelet) {
      streamPagelet.parentNode.removeChild(streamPagelet);
    }
  }
}

var retryLoop = setInterval(function () {
  blockStuff();
}, 1000);

blockStuff();
