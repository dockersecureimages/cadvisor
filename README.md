# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.32.0-alpine-3.11.5
2020/04/07 14:33:21 [INFO] ▶ Start clair-scanner
2020/04/07 14:33:23 [INFO] ▶ Server listening on port 9279
2020/04/07 14:33:23 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/07 14:33:24 [INFO] ▶ Analyzing a3c7117b922ba13165d2a1a62d727234074be3f49283c7f20230eb415a91e985
2020/04/07 14:33:24 [INFO] ▶ Analyzing 4e585610ce123aa78b8877ba6d193c44255307eb6b32db72026c61158cde1391
2020/04/07 14:33:24 [INFO] ▶ Image [secureimages/cadvisor:0.32.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress secureimages/cadvisor:0.32.0-alpine-3.11.5
2020-04-07T11:33:42.974Z        INFO    Need to update DB
2020-04-07T11:33:42.974Z        INFO    Downloading DB...
2020-04-07T11:33:47.162Z        INFO    Reopening DB...
2020-04-07T11:33:50.908Z        INFO    Detecting Alpine vulnerabilities...

secureimages/cadvisor:0.32.0-alpine-3.11.5 (alpine 3.11.5)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/google/cadvisor](https://hub.docker.com/r/prom/google/cadvisor)
```
docker pull google/cadvisor:v0.32.0
```

Security scanning using Clair
```
clair-scanner google/cadvisor:v0.32.0
2020/04/07 14:34:05 [INFO] ▶ Start clair-scanner
2020/04/07 14:34:05 [INFO] ▶ Server listening on port 9279
2020/04/07 14:34:05 [INFO] ▶ Analyzing 359d4b73bac68235810441bdde900ca185e37e4a965e9b8a35f04caded3b6242
2020/04/07 14:34:06 [INFO] ▶ Analyzing 60058d1ec0ef79e1bafaa3340b285eab31784e58995a2baf6dd4784d9ae1af9a
2020/04/07 14:34:06 [INFO] ▶ Analyzing 3fc722ac3365cdb6274b2772791fea43ae7652680b61220c06001e95533427e5
2020/04/07 14:34:06 [WARN] ▶ Image [google/cadvisor:v0.32.0] contains 4 total vulnerabilities
2020/04/07 14:34:06 [ERRO] ▶ Image [google/cadvisor:v0.32.0] contains 4 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress google/cadvisor:v0.32.0
2020-04-07T11:34:14.600Z        INFO    Need to update DB
2020-04-07T11:34:14.600Z        INFO    Downloading DB...
2020-04-07T11:34:18.664Z        INFO    Reopening DB...
2020-04-07T11:34:20.262Z        INFO    Detecting Alpine vulnerabilities...
2020-04-07T11:34:20.262Z        WARN    This OS version is no longer supported by the distribution: alpine 3.7.0
2020-04-07T11:34:20.262Z        WARN    The vulnerability detection may be insufficient because security updates are not provided

google/cadvisor:v0.32.0 (alpine 3.7.0)
======================================
Total: 8 (UNKNOWN: 0, LOW: 3, MEDIUM: 2, HIGH: 3, CRITICAL: 0)
```
