var data = require("sdk/self").data;
var pageMod = require("sdk/page-mod");

pageMod.PageMod({
  include: ["*.youtube.com", "*.twitter.com", "*.facebook.com"],
  contentScriptFile: data.url("blokker.js"),
  contentStyleFile: data.url("blokker.css"),
  attachTo: ["top"]
});
