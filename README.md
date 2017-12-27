# film adder: the mobile app(s)

The [Apache Cordova][ac] setup used to build [film adder][fa]'s mobile app for
Android.


## setup

You may need to install Java, Gradle, Android SDK, Apache Cordova, and probably
other things as well. Please refer to [Cordova's docs][cd]. If you do not have
these already in place and you have not done this before, it may take some time
and patience.

Then:

```fish
git clone filmadder/mobile
cd mobile
ln -s /path/to/filmadder/webapp/build www
npm install
```

Please note that you need film adder's webapp source code; you can either
symlink it (as suggested in the snippet above) or copy it into the `www` dir,
depending on what exactl you want to do.


## development

To build an .apk (by default in `platforms/android/build/outputs/apk/`):

```fish
cordova build
```

If you have a phone with USB debugging enabled, you can use `adb` to quickly
deploy the .apk:

```fish
adb install -r platforms/android/build/outputs/apk/android-debug.apk
```

[ac]: https://cordova.apache.org/
[cd]: https://cordova.apache.org/docs/en/latest/guide/platforms/android/
[fa]: https://filmadder.com/
