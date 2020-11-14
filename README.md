# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~138MB)

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.32.0-alpine-3.12.1
2020/11/14 16:13:32 [INFO] ▶ Start clair-scanner
2020/11/14 16:13:34 [INFO] ▶ Server listening on port 9279
2020/11/14 16:13:34 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2020/11/14 16:13:34 [INFO] ▶ Analyzing d11c2734cc9c61742f5d9ed7244bf7bc75df33338615b65b7ecc815352c87bc1
2020/11/14 16:13:34 [INFO] ▶ Analyzing f3d1df3145c1175635c3ed3f78661b0066a9b10164b30f7d35b669ea417def20
2020/11/14 16:13:34 [INFO] ▶ Image [secureimages/cadvisor:0.32.0-alpine-3.12.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/cadvisor:0.32.0-alpine-3.12.1
2020-11-14T16:13:37.978Z        INFO    Need to update DB
2020-11-14T16:13:37.978Z        INFO    Downloading DB...
2020-11-14T16:13:44.123Z        INFO    Detecting Alpine vulnerabilities...

secureimages/cadvisor:0.32.0-alpine-3.12.1 (alpine 3.12.1)
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
2020/11/14 16:13:50 [INFO] ▶ Start clair-scanner
2020/11/14 16:13:51 [INFO] ▶ Server listening on port 9279
2020/11/14 16:13:51 [INFO] ▶ Analyzing 498654318d0999ce36c7b90901ed8bd8cb63d86837cb101ea1ec9bb092f44e59
2020/11/14 16:13:51 [INFO] ▶ Analyzing f3b97535eef0cfec768c835cc2294e30bc57dba8c1dd8a568a1a03b6fed915a3
2020/11/14 16:13:51 [INFO] ▶ Analyzing 584984aa43831109bef38f32680451320bf280da8d1736e91dd0fe6100173d13
2020/11/14 16:13:51 [WARN] ▶ Image [google/cadvisor:v0.32.0] contains 4 total vulnerabilities
2020/11/14 16:13:51 [ERRO] ▶ Image [google/cadvisor:v0.32.0] contains 4 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress google/cadvisor:v0.32.0
2020-11-14T16:13:56.929Z        INFO    Need to update DB
2020-11-14T16:13:56.929Z        INFO    Downloading DB...
2020-11-14T16:14:02.236Z        INFO    Detecting Alpine vulnerabilities...
2020-11-14T16:14:02.236Z        WARN    This OS version is no longer supported by the distribution: alpine 3.7.0
2020-11-14T16:14:02.236Z        WARN    The vulnerability detection may be insufficient because security updates are not provided

google/cadvisor:v0.32.0 (alpine 3.7.0)
======================================
Total: 11 (UNKNOWN: 0, LOW: 0, MEDIUM: 3, HIGH: 5, CRITICAL: 3)
```
