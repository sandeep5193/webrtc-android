# WebRTC Build for Android


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
implementation 'io.github.sandeep5193:webrtc-android:134.0.0'
```

Maven:

```xml
<dependency>
  <groupId>io.github.sandeep5193</groupId>
  <artifactId>webrtc-android</artifactId>
  <version>134.0.0</version>
  <type>pom</type>
</dependency>
```


## Demo

You can find a very simple demo app here: <https://github.com/dbrgn/webrtc-demo>


## Target Commits

These are the target commits for the releases:

- v134.0.0 [`8d78f5de6c27b2c793039989ea381f1428fb0100`](https://chromium.googlesource.com/external/webrtc/+/8d78f5de6c27b2c793039989ea381f1428fb0100)
- v115.0.0 [`8fbabf340da0bd6c9f1450a8c4522c54390598a1`](https://chromium.googlesource.com/external/webrtc/+/8fbabf340da0bd6c9f1450a8c4522c54390598a1)
- v114.0.0 [`151be743d4c83671565f9c1eada3f4a0b2e44dea`](https://chromium.googlesource.com/external/webrtc/+/151be743d4c83671565f9c1eada3f4a0b2e44dea)
- v113.0.0 [`f6ab0b438e22ea30db7ad3fbf9f870b0d4506235`](https://chromium.googlesource.com/external/webrtc/+/f6ab0b438e22ea30db7ad3fbf9f870b0d4506235)
- v112.0.0 [`d75b9e9ff07ee42841b4e416629c9fbd4b058905`](https://chromium.googlesource.com/external/webrtc/+/d75b9e9ff07ee42841b4e416629c9fbd4b058905)
- v111.0.0 [`9089c0d814b11739a7e323c6a9cb03bfad149ea8`](https://chromium.googlesource.com/external/webrtc/+/9089c0d814b11739a7e323c6a9cb03bfad149ea8)
- v110.0.0 [`1e675c7835f188cd8be228f5da6d3467690355b8`](https://chromium.googlesource.com/external/webrtc/+/1e675c7835f188cd8be228f5da6d3467690355b8)
- v109.0.0 [`4e8a5ac68e8a4ae0588f54f2fdb8cbd1eb5fa50d`](https://chromium.googlesource.com/external/webrtc/+/4e8a5ac68e8a4ae0588f54f2fdb8cbd1eb5fa50d)
- v108.0.0 [`93081d594f7efff72958a79251f53731b99e902b`](https://chromium.googlesource.com/external/webrtc/+/93081d594f7efff72958a79251f53731b99e902b)
- v107.0.0 [`eef098d1c7d50613d8bff2467d674525a9d0c57c`](https://chromium.googlesource.com/external/webrtc/+/eef098d1c7d50613d8bff2467d674525a9d0c57c)


## How This Library Is Built

The builds are created using
[webrtc-build-docker](https://github.com/threema-ch/webrtc-build-docker)
(through `build-final.sh` to keep things as reproducible as possible). No
custom patches are applied.

Build flags:

    WEBRTC_COMPILE_ARGS: symbol_level=1 debuggable_apks=false enable_libaom=false rtc_enable_protobuf=false rtc_include_dav1d_in_internal_decoder_factory=false


## Signatures

Releases to Maven Central are signed with the following PGP key:

pub   ed25519 2025-07-17 [SC] [expires: 2028-07-16]
      3227294C801DD72CB40C8DD57D9DE58DF5BBBA0D
uid           [ultimate] Sandeep Dhameshia <sandeep.dhameshia@gmail.com>
sub   cv25519 2025-07-17 [E] [expires: 2028-07-16]


## Local Testing

Create a local publication (usually at `$HOME/.m2/repository/`):

    ./gradlew publishToMavenLocal

Include it in your project like this:

    repositories {
        ...
        mavenLocal()
    }


## License

    Copyright (c) 2024-2025 Sandeep Dhameshia

    Licensed under the Apache License, Version 2.0, <see LICENSE-APACHE file>
    or the MIT license <see LICENSE-MIT file>, at your option. This file may not be
    copied, modified, or distributed except according to those terms.
