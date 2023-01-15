# WebRTC Build for Android

[![License](https://img.shields.io/badge/license-MIT%20%2F%20Apache%202.0-blue.svg)](https://github.com/dbrgn/webrtc-android)
![Maven Central](https://img.shields.io/maven-central/v/dev.bargen/webrtc-android)

This is a vanilla WebRTC build with Java bindings packaged for Android. No
additional patches have been applied.

> :information_source: **Note:** This build of WebRTC is a service to the open
> source community. I cannot offer _any_ support for it whatsoever. If you need
> help with WebRTC, try asking in the [discuss-webrtc mailing
> list][discuss-webrtc] or on StackOverflow.

> :warning: **Warning:** If you work on a complex project that is based on
> WebRTC, you should not rely on the binary package published by a random
> person on the internet, instead you should build it yourself!

[discuss-webrtc]: https://groups.google.com/g/discuss-webrtc


## Installing

This package is available on Maven Central (starting with version 107.0.0). It
includes the WebRTC PeerConnection build for ARM and x86, both 32 and 64 bit
builds.

Gradle:

```groovy
implementation 'dev.bargen:webrtc-android:109.0.0'
```

Maven:

```xml
<dependency>
  <groupId>dev.bargen</groupId>
  <artifactId>webrtc-android</artifactId>
  <version>109.0.0</version>
  <type>pom</type>
</dependency>
```


## Demo

You can find a very simple demo app here: <https://github.com/dbrgn/webrtc-demo>


## Target Commits

These are the target commits for the releases:

- v109.0.0 [`4e8a5ac68e8a4ae0588f54f2fdb8cbd1eb5fa50d`](https://chromium.googlesource.com/external/webrtc/+/4e8a5ac68e8a4ae0588f54f2fdb8cbd1eb5fa50d)
- v108.0.0 [`93081d594f7efff72958a79251f53731b99e902b`](https://chromium.googlesource.com/external/webrtc/+/93081d594f7efff72958a79251f53731b99e902b)
- v107.0.0 [`eef098d1c7d50613d8bff2467d674525a9d0c57c`](https://chromium.googlesource.com/external/webrtc/+/eef098d1c7d50613d8bff2467d674525a9d0c57c)


## How This Library Is Built

The builds are created using
[webrtc-build-docker](https://github.com/threema-ch/webrtc-build-docker)
(through `build-final.sh` to keep things as reproducible as possible). No
custom patches are applied.

Build flags:

    WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false


## Signatures

Releases to Maven Central are signed with the following PGP key:

    pub   ed25519/0xB993FF98A90C9AB1 2022-11-19 [C]
          Key fingerprint = 20EE 002D 778A E197 EF7D  0D2C B993 FF98 A90C 9AB1
    uid                   [ultimate] Danilo Bargen <mail@dbrgn.ch>
    sub   ed25519/0x73574DD095640FCF 2022-11-19 [S]


## Local Testing

Create a local publication (usually at `$HOME/.m2/repository/`):

    ./gradlew publishToMavenLocal

Include it in your project like this:

    repositories {
        ...
        mavenLocal()
    }


## License

    Copyright (c) 2019-2022 Threema GmbH
    Copyright (c) 2022 Danilo Bargen

    Licensed under the Apache License, Version 2.0, <see LICENSE-APACHE file>
    or the MIT license <see LICENSE-MIT file>, at your option. This file may not be
    copied, modified, or distributed except according to those terms.
