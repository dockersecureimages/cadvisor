# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~88.5MB)

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.39.0-alpine-3.13.5
2021/04/16 08:23:07 [INFO] ▶ Start clair-scanner
2021/04/16 08:23:08 [INFO] ▶ Server listening on port 9279
2021/04/16 08:23:08 [INFO] ▶ Analyzing d09376239d873ace0c02b1b53834f0fe3167a652a8fc436465db0171eb639b61
2021/04/16 08:23:08 [INFO] ▶ Analyzing d0bd5dfad46136b004370889c597fccc6510708072901f3d081f72f8299bf0bc
2021/04/16 08:23:08 [INFO] ▶ Analyzing f9cecf3c9db60cb4fc5a2fbda4eb43d2eb989aa5e8312997644f81aff7f9f8e5
2021/04/16 08:23:08 [INFO] ▶ Analyzing 1f086c722fa27228bc7958739c4045e1fda408e2d8cf7b2ead98212056612adc
2021/04/16 08:23:08 [INFO] ▶ Analyzing f62c6380263ac408f79c075e93fc93f65b96d09f5d09d30085a595f78fd71b4f
2021/04/16 08:23:08 [WARN] ▶ Image [secureimages/cadvisor:0.39.0-alpine-3.13.5] contains 1 total vulnerabilities
2021/04/16 08:23:08 [ERRO] ▶ Image [secureimages/cadvisor:0.39.0-alpine-3.13.5] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/cadvisor:0.39.0-alpine-3.13.5
2021-04-16T08:23:13.280Z        INFO    Need to update DB
2021-04-16T08:23:13.280Z        INFO    Downloading DB...
2021-04-16T08:23:16.878Z        INFO    Detecting Alpine vulnerabilities...
2021-04-16T08:23:16.879Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/cadvisor:0.39.0-alpine-3.13.5 (alpine 3.13.5)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~174MB)

[https://hub.docker.com/r/google/cadvisor](https://hub.docker.com/r/prom/google/cadvisor)
```
docker pull gcr.io/cadvisor/cadvisor:v0.39.0
```

Security scanning using Clair
```
clair-scanner gcr.io/cadvisor/cadvisor:v0.39.0
2021/04/16 08:23:22 [INFO] ▶ Start clair-scanner
2021/04/16 08:23:24 [INFO] ▶ Server listening on port 9279
2021/04/16 08:23:24 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2021/04/16 08:23:24 [INFO] ▶ Analyzing 03f4bf26e71035f3c2cf996524a7bd536ac65e8088668e202519c5e8082664fd
2021/04/16 08:23:24 [INFO] ▶ Analyzing 7379b1d7b7bb2852f2a4775c136b5322f6f0919db0185bc470797ee03acbe3e2
2021/04/16 08:23:24 [INFO] ▶ Analyzing 1955a712edf6125dad1a4b41d2d8ed985e6331d76db167db88959d9909e67fc5
2021/04/16 08:23:24 [INFO] ▶ Analyzing 2648bad48c5587e7e076514be9f5f2da67dc3b7545f45b2abca559b2beba6def
2021/04/16 08:23:24 [WARN] ▶ Image [gcr.io/cadvisor/cadvisor:v0.39.0] contains 3 total vulnerabilities
2021/04/16 08:23:24 [ERRO] ▶ Image [gcr.io/cadvisor/cadvisor:v0.39.0] contains 3 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress gcr.io/cadvisor/cadvisor:v0.39.0
2021-04-16T08:23:30.991Z        INFO    Need to update DB
2021-04-16T08:23:30.991Z        INFO    Downloading DB...
2021-04-16T08:23:35.359Z        INFO    Detecting Alpine vulnerabilities...
2021-04-16T08:23:35.360Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

gcr.io/cadvisor/cadvisor:v0.39.0 (alpine 3.12.1)
================================================
Total: 17 (UNKNOWN: 1, LOW: 2, MEDIUM: 8, HIGH: 6, CRITICAL: 0)
```
