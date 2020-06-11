# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~138MB)

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.32.0-alpine-3.12.0
2020/06/11 13:45:56 [INFO] ▶ Start clair-scanner
2020/06/11 13:45:57 [INFO] ▶ Server listening on port 9279
2020/06/11 13:45:57 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 13:45:57 [INFO] ▶ Analyzing 2a142b49bfd6272ba4a9f3e15c54d7d4e6931425081c277aabd6b4657d7883e5
2020/06/11 13:45:58 [INFO] ▶ Analyzing 44e38fcd4afa789c4280c8b6fdc7803bcfbe1417120a49ff2f41a7090f3288e5
2020/06/11 13:45:58 [INFO] ▶ Image [secureimages/cadvisor:0.32.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/cadvisor:0.32.0-alpine-3.12.0
2020-06-11T10:46:08.394Z        INFO    Need to update DB
2020-06-11T10:46:08.394Z        INFO    Downloading DB...
2020-06-11T10:46:14.415Z        INFO    Detecting Alpine vulnerabilities...

secureimages/cadvisor:0.32.0-alpine-3.12.0 (alpine 3.12.0)
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
2020/06/11 13:46:19 [INFO] ▶ Start clair-scanner
2020/06/11 13:46:20 [INFO] ▶ Server listening on port 9279
2020/06/11 13:46:20 [INFO] ▶ Analyzing 359d4b73bac68235810441bdde900ca185e37e4a965e9b8a35f04caded3b6242
2020/06/11 13:46:20 [INFO] ▶ Analyzing 60058d1ec0ef79e1bafaa3340b285eab31784e58995a2baf6dd4784d9ae1af9a
2020/06/11 13:46:20 [INFO] ▶ Analyzing 3fc722ac3365cdb6274b2772791fea43ae7652680b61220c06001e95533427e5
2020/06/11 13:46:20 [WARN] ▶ Image [google/cadvisor:v0.32.0] contains 4 total vulnerabilities
2020/06/11 13:46:20 [ERRO] ▶ Image [google/cadvisor:v0.32.0] contains 4 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress google/cadvisor:v0.32.0
2020-06-11T10:46:26.914Z        INFO    Need to update DB
2020-06-11T10:46:26.915Z        INFO    Downloading DB...
2020-06-11T10:46:33.099Z        INFO    Detecting Alpine vulnerabilities...
2020-06-11T10:46:33.099Z        WARN    This OS version is no longer supported by the distribution: alpine 3.7.0
2020-06-11T10:46:33.099Z        WARN    The vulnerability detection may be insufficient because security updates are not provided

google/cadvisor:v0.32.0 (alpine 3.7.0)
======================================
Total: 8 (UNKNOWN: 0, LOW: 3, MEDIUM: 2, HIGH: 3, CRITICAL: 0)
```
