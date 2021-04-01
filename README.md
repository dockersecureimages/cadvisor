# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~88.5MB)

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.39.0-alpine-3.13.4
2021/04/01 12:38:20 [INFO] ▶ Start clair-scanner
2021/04/01 12:38:21 [INFO] ▶ Server listening on port 9279
2021/04/01 12:38:21 [INFO] ▶ Analyzing e46e108285519ee26fa254dfaab29d7d350c0c321daa1350567c5202109138ca
2021/04/01 12:38:21 [INFO] ▶ Analyzing 85643882d4805892dc51eaac4776090bfc0e05f1785baeb2a0377748a28c9656
2021/04/01 12:38:21 [INFO] ▶ Analyzing 0c8c12fc28de24173f53b1b46968fedec68a84469a6217ee98e38aa2cd276ea3
2021/04/01 12:38:21 [INFO] ▶ Analyzing 7027699be5055d7f0042617f9de60f4ae144e19c5581a776e7a06c00ffe88a51
2021/04/01 12:38:21 [INFO] ▶ Analyzing 076164a8c71689d968404052bf651a9c757547347a8c95baddea8c5b90ca4151
2021/04/01 12:38:21 [WARN] ▶ Image [secureimages/cadvisor:0.39.0-alpine-3.13.4] contains 1 total vulnerabilities
2021/04/01 12:38:21 [ERRO] ▶ Image [secureimages/cadvisor:0.39.0-alpine-3.13.4] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/cadvisor:0.39.0-alpine-3.13.4
2021-04-01T12:38:27.088Z        INFO    Need to update DB
2021-04-01T12:38:27.088Z        INFO    Downloading DB...
2021-04-01T12:38:32.489Z        INFO    Detecting Alpine vulnerabilities...
2021-04-01T12:38:32.492Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/cadvisor:0.39.0-alpine-3.13.4 (alpine 3.13.4)
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
2021/04/01 12:38:36 [INFO] ▶ Start clair-scanner
2021/04/01 12:38:38 [INFO] ▶ Server listening on port 9279
2021/04/01 12:38:38 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2021/04/01 12:38:38 [INFO] ▶ Analyzing 03f4bf26e71035f3c2cf996524a7bd536ac65e8088668e202519c5e8082664fd
2021/04/01 12:38:39 [INFO] ▶ Analyzing 7379b1d7b7bb2852f2a4775c136b5322f6f0919db0185bc470797ee03acbe3e2
2021/04/01 12:38:39 [INFO] ▶ Analyzing 1955a712edf6125dad1a4b41d2d8ed985e6331d76db167db88959d9909e67fc5
2021/04/01 12:38:39 [INFO] ▶ Analyzing 2648bad48c5587e7e076514be9f5f2da67dc3b7545f45b2abca559b2beba6def
2021/04/01 12:38:39 [WARN] ▶ Image [gcr.io/cadvisor/cadvisor:v0.39.0] contains 2 total vulnerabilities
2021/04/01 12:38:39 [ERRO] ▶ Image [gcr.io/cadvisor/cadvisor:v0.39.0] contains 2 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress gcr.io/cadvisor/cadvisor:v0.39.0
2021-04-01T12:38:43.220Z        INFO    Need to update DB
2021-04-01T12:38:43.220Z        INFO    Downloading DB...
2021-04-01T12:38:49.136Z        INFO    Detecting Alpine vulnerabilities...
2021-04-01T12:38:49.139Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

gcr.io/cadvisor/cadvisor:v0.39.0 (alpine 3.12.1)
================================================
Total: 16 (UNKNOWN: 0, LOW: 2, MEDIUM: 8, HIGH: 6, CRITICAL: 0)
```
