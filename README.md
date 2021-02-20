# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~75.3MB)

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.37.5-alpine-3.13.2
2021/02/20 14:46:32 [INFO] ▶ Start clair-scanner
2021/02/20 14:46:33 [INFO] ▶ Server listening on port 9279
2021/02/20 14:46:33 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 14:46:33 [INFO] ▶ Analyzing 96c2f1270eeaa3749395a3d0d1248925f13dd15ec65cfc39abd97208e98b984d
2021/02/20 14:46:33 [INFO] ▶ Analyzing e61dc8d43a28e63d3cec6225e727b32d4077eb5ebeea5d0f20d8cf7ff1eb3e91
2021/02/20 14:46:33 [INFO] ▶ Analyzing f387a990a99cbed4820e998605222cce1c81d3adaae2e7451fb9d6562ba28e05
2021/02/20 14:46:33 [WARN] ▶ Image [secureimages/cadvisor:0.37.5-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 14:46:33 [ERRO] ▶ Image [secureimages/cadvisor:0.37.5-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/cadvisor:0.37.5-alpine-3.13.2
2021-02-20T14:46:38.726Z        INFO    Need to update DB
2021-02-20T14:46:38.726Z        INFO    Downloading DB...
2021-02-20T14:46:42.345Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T14:46:42.346Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/cadvisor:0.37.5-alpine-3.13.2 (alpine 3.13.2)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~160MB)

[https://hub.docker.com/r/google/cadvisor](https://hub.docker.com/r/prom/google/cadvisor)
```
docker pull gcr.io/cadvisor/cadvisor:v0.37.5
```

Security scanning using Clair
```
clair-scanner gcr.io/cadvisor/cadvisor:v0.37.5
2021/02/20 14:46:46 [INFO] ▶ Start clair-scanner
2021/02/20 14:46:48 [INFO] ▶ Server listening on port 9279
2021/02/20 14:46:48 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2021/02/20 14:46:48 [INFO] ▶ Analyzing d1eba729283ae7623a00a703ffa881e29a805352d534de77f5cb1c0a1106e1aa
2021/02/20 14:46:48 [INFO] ▶ Analyzing c51ce0bf1901da406faee7869fabe6c39ebb9d9aabb909ef36f5b0954f034598
2021/02/20 14:46:48 [INFO] ▶ Analyzing cc7cc0b71a9683e75fa923ad5502e524b5bfcbf379b7c777b00ce308d0c82288
2021/02/20 14:46:48 [INFO] ▶ Image [gcr.io/cadvisor/cadvisor:v0.37.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress gcr.io/cadvisor/cadvisor:v0.37.5
2021-02-20T14:46:52.918Z        INFO    Need to update DB
2021-02-20T14:46:52.918Z        INFO    Downloading DB...
2021-02-20T14:46:57.387Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T14:46:57.388Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

gcr.io/cadvisor/cadvisor:v0.37.5 (alpine 3.12.1)
================================================
Total: 9 (UNKNOWN: 0, LOW: 2, MEDIUM: 5, HIGH: 2, CRITICAL: 0)
```
