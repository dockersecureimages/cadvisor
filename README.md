# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.32.0-alpine-3.11.5
2020/03/24 16:57:03 [INFO] ▶ Start clair-scanner
2020/03/24 16:57:05 [INFO] ▶ Server listening on port 9279
2020/03/24 16:57:05 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 16:57:05 [INFO] ▶ Analyzing 11c0a954250e2dfb4141c4ff38489edf143d222b10b81f7c4a697e8b569fa1b0
2020/03/24 16:57:05 [INFO] ▶ Analyzing 2e2eaf2986461c940510815afddfd3b0f54567aac0cad1562d2eef66e49a38d7
2020/03/24 16:57:05 [INFO] ▶ Image [secureimages/cadvisor:0.32.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/cadvisor:0.32.0-alpine-3.11.5
2020-03-24T14:57:10.709Z        INFO    Need to update DB
2020-03-24T14:57:10.709Z        INFO    Downloading DB...
2020-03-24T14:57:14.761Z        INFO    Reopening DB...
2020-03-24T14:57:18.111Z        INFO    Detecting Alpine vulnerabilities...

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
2020/03/24 16:57:22 [INFO] ▶ Start clair-scanner
2020/03/24 16:57:23 [INFO] ▶ Server listening on port 9279
2020/03/24 16:57:23 [INFO] ▶ Analyzing 359d4b73bac68235810441bdde900ca185e37e4a965e9b8a35f04caded3b6242
2020/03/24 16:57:23 [INFO] ▶ Analyzing 60058d1ec0ef79e1bafaa3340b285eab31784e58995a2baf6dd4784d9ae1af9a
2020/03/24 16:57:23 [INFO] ▶ Analyzing 3fc722ac3365cdb6274b2772791fea43ae7652680b61220c06001e95533427e5
2020/03/24 16:57:23 [WARN] ▶ Image [google/cadvisor:v0.32.0] contains 4 total vulnerabilities
2020/03/24 16:57:23 [ERRO] ▶ Image [google/cadvisor:v0.32.0] contains 4 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress google/cadvisor:v0.32.0
2020-03-24T14:57:31.908Z        INFO    Need to update DB
2020-03-24T14:57:31.908Z        INFO    Downloading DB...
2020-03-24T14:57:35.477Z        INFO    Reopening DB...
2020-03-24T14:57:37.328Z        INFO    Detecting Alpine vulnerabilities...
2020-03-24T14:57:37.328Z        WARN    This OS version is no longer supported by the distribution: alpine 3.7.0
2020-03-24T14:57:37.328Z        WARN    The vulnerability detection may be insufficient because security updates are not provided

google/cadvisor:v0.32.0 (alpine 3.7.0)
======================================
Total: 8 (UNKNOWN: 0, LOW: 3, MEDIUM: 2, HIGH: 3, CRITICAL: 0)
```
