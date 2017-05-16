# Blokker

tl;dr: Blokker helps you to be more productive by blocking social feeds.

[Download Blokker for Google Chrome](https://chrome.google.com/webstore/detail/blokker/nfbccglabkpcibhpnjlodhncnlggpkka)

[Download Blokker for Firefox](https://addons.mozilla.org/en-US/firefox/addon/blokker/)

Blokker plugin blocks your Twitter, Facebook and YouTube feeds, without blocking all access.
This allows you to still post and receive notifications, while you won't get sucked
into tweets, posts and video's you don't want to see.

# Contributing

## Developing and testing Google Chrome

To get started with developing your own additions to this plugin, run this command:

```
tools/make-chromium.sh
```

After this, add a new unpacked extension to your local Google Chrome and point this to the `dist/build/blokker.chromium` folder. Now make your changes, run `make-chromium` and refresh your plugin
in Chrome to see if everything is working as it should. There are no tests yet, because YOLO.

## Developing and testing Firefox

To get started with developing your own additions to this plugin, run this command:

```
tools/make-firefox.sh
```

After this, load the plugin into Firefox.

## Developing and testing Safari

I'm too cheap to have my own Apple Developer Account. Just run `tools/make-safari.sh`. Open Safari, go to the `Develop` menu and select `Show Extension Builder`. Click the small plus on the left hand side, and select `Add extension...`. Locate the compiled extension in the `dist/build` folder.

To build your own signed version of the Blokker for Safari plugin (for which you need to be enrolled in the Apple Developer Program), follow these steps:

Install xar-js:

```
npm install xar-js --global
```

You need to [follow the xar-js README](https://github.com/robertknight/xar-js#building-a-safari-extension) on how to export the required certificate files in order to build a valid version of the extension.

After following this guide, you should have these files inside your `platform/safari` folder:

| Filename               |
|:-----------------------|
| apple-intermediate.pem |
| apple-root.pem         |
| cert.pem               |
| privatekey.pem         |

Almost ready. Now run this command:

```
tools/make-safari.sh all
```

The script will build a `scrummer.safariextz`. Doubleclick it and Safari will ask you if you want to install the extension.
