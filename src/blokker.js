function blockStuff() {
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
