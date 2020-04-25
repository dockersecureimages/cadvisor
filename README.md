# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~182MB)

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.32.0-alpine-3.11.6
2020/04/25 12:03:23 [INFO] ▶ Start clair-scanner
2020/04/25 12:03:25 [INFO] ▶ Server listening on port 9279
2020/04/25 12:03:25 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 12:03:25 [INFO] ▶ Analyzing 8d714d88ac9b4c1141c2dbb50e7add8a1b5a7e56be9d493c86c143e8db4ec443
2020/04/25 12:03:25 [INFO] ▶ Analyzing c0aeada7def522f3f641d5ea4797e7c1b4ee3467b5c1c6c6f8321ea9775df308
2020/04/25 12:03:25 [INFO] ▶ Image [secureimages/cadvisor:0.32.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/cadvisor:0.32.0-alpine-3.11.6
2020-04-25T09:03:30.557Z        INFO    Need to update DB
2020-04-25T09:03:30.557Z        INFO    Downloading DB...
2020-04-25T09:03:37.011Z        INFO    Detecting Alpine vulnerabilities...

secureimages/cadvisor:0.32.0-alpine-3.11.6 (alpine 3.11.6)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~69.6MB)

[https://hub.docker.com/r/google/cadvisor](https://hub.docker.com/r/prom/google/cadvisor)
```
docker pull google/cadvisor:v0.32.0
```

Security scanning using Clair
```
clair-scanner google/cadvisor:v0.32.0
2020/04/25 12:03:42 [INFO] ▶ Start clair-scanner
2020/04/25 12:03:42 [INFO] ▶ Server listening on port 9279
2020/04/25 12:03:42 [INFO] ▶ Analyzing 359d4b73bac68235810441bdde900ca185e37e4a965e9b8a35f04caded3b6242
2020/04/25 12:03:43 [INFO] ▶ Analyzing 60058d1ec0ef79e1bafaa3340b285eab31784e58995a2baf6dd4784d9ae1af9a
2020/04/25 12:03:43 [INFO] ▶ Analyzing 3fc722ac3365cdb6274b2772791fea43ae7652680b61220c06001e95533427e5
2020/04/25 12:03:43 [WARN] ▶ Image [google/cadvisor:v0.32.0] contains 4 total vulnerabilities
2020/04/25 12:03:43 [ERRO] ▶ Image [google/cadvisor:v0.32.0] contains 4 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress google/cadvisor:v0.32.0
2020-04-25T09:03:50.883Z        INFO    Need to update DB
2020-04-25T09:03:50.883Z        INFO    Downloading DB...
2020-04-25T09:03:56.693Z        INFO    Detecting Alpine vulnerabilities...
2020-04-25T09:03:56.694Z        WARN    This OS version is no longer supported by the distribution: alpine 3.7.0
2020-04-25T09:03:56.694Z        WARN    The vulnerability detection may be insufficient because security updates are not provided

google/cadvisor:v0.32.0 (alpine 3.7.0)
======================================
Total: 8 (UNKNOWN: 0, LOW: 3, MEDIUM: 2, HIGH: 3, CRITICAL: 0)
```
