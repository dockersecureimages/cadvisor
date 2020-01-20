# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.32.0-alpine-3.11.3
2020/01/20 22:12:29 [INFO] ▶ Start clair-scanner
2020/01/20 22:12:31 [INFO] ▶ Server listening on port 9279
2020/01/20 22:12:31 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 22:12:31 [INFO] ▶ Analyzing 73c112ca76af0c59505f467e75ad09bde4cecfc098363cfe2ad6e418fc8c84bf
2020/01/20 22:12:32 [INFO] ▶ Analyzing 2ab3129bdb1308bf221ef885875adb9feee9383df1f9573ee897bcbe4e9f9a2c
2020/01/20 22:12:32 [INFO] ▶ Image [secureimages/cadvisor:0.32.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/cadvisor:0.32.0-alpine-3.11.3
2020-01-20T20:12:38.075Z        INFO    Need to update DB
2020-01-20T20:12:38.075Z        INFO    Downloading DB...
2020-01-20T20:12:42.653Z        INFO    Reopening DB...
2020-01-20T20:12:45.582Z        INFO    Detecting Alpine vulnerabilities...

secureimages/cadvisor:0.32.0-alpine-3.11.3 (alpine 3.11.3)
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
2020/01/20 22:12:50 [INFO] ▶ Start clair-scanner
2020/01/20 22:12:51 [INFO] ▶ Server listening on port 9279
2020/01/20 22:12:51 [INFO] ▶ Analyzing 359d4b73bac68235810441bdde900ca185e37e4a965e9b8a35f04caded3b6242
2020/01/20 22:12:51 [INFO] ▶ Analyzing 60058d1ec0ef79e1bafaa3340b285eab31784e58995a2baf6dd4784d9ae1af9a
2020/01/20 22:12:51 [INFO] ▶ Analyzing 3fc722ac3365cdb6274b2772791fea43ae7652680b61220c06001e95533427e5
2020/01/20 22:12:51 [WARN] ▶ Image [google/cadvisor:v0.32.0] contains 4 total vulnerabilities
2020/01/20 22:12:51 [ERRO] ▶ Image [google/cadvisor:v0.32.0] contains 4 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress google/cadvisor:v0.32.0
2020-01-20T20:12:58.537Z        INFO    Need to update DB
2020-01-20T20:12:58.537Z        INFO    Downloading DB...
2020-01-20T20:13:02.634Z        INFO    Reopening DB...
2020-01-20T20:13:04.451Z        INFO    Detecting Alpine vulnerabilities...
2020-01-20T20:13:04.452Z        WARN    This OS version is no longer supported by the distribution: alpine 3.7.0
2020-01-20T20:13:04.452Z        WARN    The vulnerability detection may be insufficient because security updates are not provided

google/cadvisor:v0.32.0 (alpine 3.7.0)
======================================
Total: 8 (UNKNOWN: 0, LOW: 3, MEDIUM: 2, HIGH: 3, CRITICAL: 0)
```
