# Releasing

Build:

    ./gradlew clean build

Publish the library for staging locally

    ./gradlew publish

Afterwards, go to build/staging-deply, sign all the files with gpg private key. javadoc and sources are not generated with current build, can be copied from previous builds as they won't change. 

create a zip and deploy it manually https://central.sonatype.com/

Add and commit:

    git commit -m "Release v134.0.0"
    git tag -a v134.0.0 -m "Version 134.0.0"
    git push && git push --tags
