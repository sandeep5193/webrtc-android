# Releasing

Build:

    ./gradlew clean build

Publish the library to maven central

    ./gradlew publishToMavenCentral

Afterward go to Deployments on the Central Portal [website](https://central.sonatype.com/publishing/deployments) and click "Publish" on the deployment.

Add and commit:

    git commit -m "Release v134.0.0"
    git tag -a v134.0.0 -m "Version 134.0.0"
    git push && git push --tags
