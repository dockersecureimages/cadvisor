# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~138MB)

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.32.0-alpine-3.12.3
2021/01/11 09:19:46 [INFO] ▶ Start clair-scanner
2021/01/11 09:19:47 [INFO] ▶ Server listening on port 9279
2021/01/11 09:19:47 [INFO] ▶ Analyzing 239a994d90a30d28d70001f62415dabc8636df0ebb561fe4d6c1b4b1d4a6cbcf
2021/01/11 09:19:47 [INFO] ▶ Analyzing 96b54209eeee9386e66c0da41d8ac2f71101d0f5a80bda79db76103c640e194d
2021/01/11 09:19:48 [INFO] ▶ Analyzing 4eecddd915549d786af525db1487ad9b3de17731fd2d63d6014b0aee05a41e16
2021/01/11 09:19:48 [INFO] ▶ Image [secureimages/cadvisor:0.32.0-alpine-3.12.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress secureimages/cadvisor:0.32.0-alpine-3.12.3
2021-01-11T09:19:55.462Z        INFO    Need to update DB
2021-01-11T09:19:55.462Z        INFO    Downloading DB...
2021-01-11T09:20:01.615Z        INFO    Detecting Alpine vulnerabilities...
2021-01-11T09:20:01.616Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/cadvisor:0.32.0-alpine-3.12.3 (alpine 3.12.3)
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
2021/01/11 09:20:07 [INFO] ▶ Start clair-scanner
2021/01/11 09:20:07 [INFO] ▶ Server listening on port 9279
2021/01/11 09:20:07 [INFO] ▶ Analyzing 498654318d0999ce36c7b90901ed8bd8cb63d86837cb101ea1ec9bb092f44e59
2021/01/11 09:20:07 [INFO] ▶ Analyzing f3b97535eef0cfec768c835cc2294e30bc57dba8c1dd8a568a1a03b6fed915a3
2021/01/11 09:20:08 [INFO] ▶ Analyzing 584984aa43831109bef38f32680451320bf280da8d1736e91dd0fe6100173d13
2021/01/11 09:20:08 [WARN] ▶ Image [google/cadvisor:v0.32.0] contains 4 total vulnerabilities
2021/01/11 09:20:08 [ERRO] ▶ Image [google/cadvisor:v0.32.0] contains 4 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress google/cadvisor:v0.32.0
2021-01-11T09:20:13.947Z        INFO    Need to update DB
2021-01-11T09:20:13.947Z        INFO    Downloading DB...
2021-01-11T09:20:18.929Z        INFO    Detecting Alpine vulnerabilities...
2021-01-11T09:20:18.929Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
2021-01-11T09:20:18.930Z        WARN    This OS version is no longer supported by the distribution: alpine 3.7.0
2021-01-11T09:20:18.930Z        WARN    The vulnerability detection may be insufficient because security updates are not provided

google/cadvisor:v0.32.0 (alpine 3.7.0)
======================================
Total: 11 (UNKNOWN: 0, LOW: 0, MEDIUM: 3, HIGH: 5, CRITICAL: 3)
```
