# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~80.6MB)

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.39.0-alpine-3.13.3
2021/03/31 09:05:19 [INFO] ▶ Start clair-scanner
2021/03/31 09:05:19 [INFO] ▶ Server listening on port 9279
2021/03/31 09:05:19 [INFO] ▶ Analyzing 7d89ae2c30338875fa3a10be99c984f80dac89b1527ef8115ca77d7fd8eeef92
2021/03/31 09:05:19 [INFO] ▶ Analyzing 8b7e40c4762c58ecaf3d39f16368b2e6381506908b0523d997b68e91b6463e8c
2021/03/31 09:05:19 [INFO] ▶ Analyzing 33fc38cb397090586bdeaaca8e65a5800a8588a49338652496d2b67f7f385a9e
2021/03/31 09:05:19 [INFO] ▶ Analyzing 2b70cb1f4b567fd5b476e50f57db64d0d37c611463bce55138f340cb87422025
2021/03/31 09:05:19 [WARN] ▶ Image [secureimages/cadvisor:0.39.0-alpine-3.13.3] contains 2 total vulnerabilities
2021/03/31 09:05:19 [ERRO] ▶ Image [secureimages/cadvisor:0.39.0-alpine-3.13.3] contains 2 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/cadvisor:0.39.0-alpine-3.13.3
2021-03-31T09:05:25.160Z        INFO    Need to update DB
2021-03-31T09:05:25.160Z        INFO    Downloading DB...
2021-03-31T09:05:28.564Z        INFO    Detecting Alpine vulnerabilities...
2021-03-31T09:05:28.565Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/cadvisor:0.39.0-alpine-3.13.3 (alpine 3.13.3)
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
2021/03/31 09:05:32 [INFO] ▶ Start clair-scanner
2021/03/31 09:05:34 [INFO] ▶ Server listening on port 9279
2021/03/31 09:05:34 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2021/03/31 09:05:34 [INFO] ▶ Analyzing 03f4bf26e71035f3c2cf996524a7bd536ac65e8088668e202519c5e8082664fd
2021/03/31 09:05:34 [INFO] ▶ Analyzing 7379b1d7b7bb2852f2a4775c136b5322f6f0919db0185bc470797ee03acbe3e2
2021/03/31 09:05:34 [INFO] ▶ Analyzing 1955a712edf6125dad1a4b41d2d8ed985e6331d76db167db88959d9909e67fc5
2021/03/31 09:05:34 [INFO] ▶ Analyzing 2648bad48c5587e7e076514be9f5f2da67dc3b7545f45b2abca559b2beba6def
2021/03/31 09:05:35 [WARN] ▶ Image [gcr.io/cadvisor/cadvisor:v0.39.0] contains 2 total vulnerabilities
2021/03/31 09:05:35 [ERRO] ▶ Image [gcr.io/cadvisor/cadvisor:v0.39.0] contains 2 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress gcr.io/cadvisor/cadvisor:v0.39.0
2021-03-31T09:05:38.822Z        INFO    Need to update DB
2021-03-31T09:05:38.822Z        INFO    Downloading DB...
2021-03-31T09:05:43.694Z        INFO    Detecting Alpine vulnerabilities...
2021-03-31T09:05:43.696Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

gcr.io/cadvisor/cadvisor:v0.39.0 (alpine 3.12.1)
================================================
Total: 14 (UNKNOWN: 0, LOW: 2, MEDIUM: 8, HIGH: 4, CRITICAL: 0)
```
