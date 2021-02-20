# cAdvisor

cAdvisor, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~140MB)

Security scanning using Clair
```
clair-scanner secureimages/cadvisor:0.32.0-alpine-3.13.2
2021/02/20 14:34:45 [INFO] ▶ Start clair-scanner
2021/02/20 14:34:47 [INFO] ▶ Server listening on port 9279
2021/02/20 14:34:47 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 14:34:47 [INFO] ▶ Analyzing d9f78caf00a86cf09e9a6d7ce16172fb6b9ce76a20319687f32e05e930a94466
2021/02/20 14:34:47 [INFO] ▶ Analyzing 122e618e67cb3004e3403d74549278f40930aa656b90d26a3682fd7d207d677e
2021/02/20 14:34:47 [WARN] ▶ Image [secureimages/cadvisor:0.32.0-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 14:34:47 [ERRO] ▶ Image [secureimages/cadvisor:0.32.0-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/cadvisor:0.32.0-alpine-3.13.2
2021-02-20T14:34:51.832Z        INFO    Need to update DB
2021-02-20T14:34:51.832Z        INFO    Downloading DB...
2021-02-20T14:34:56.251Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T14:34:56.252Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/cadvisor:0.32.0-alpine-3.13.2 (alpine 3.13.2)
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
2021/02/20 14:35:02 [INFO] ▶ Start clair-scanner
2021/02/20 14:35:02 [INFO] ▶ Server listening on port 9279
2021/02/20 14:35:02 [INFO] ▶ Analyzing 498654318d0999ce36c7b90901ed8bd8cb63d86837cb101ea1ec9bb092f44e59
2021/02/20 14:35:02 [INFO] ▶ Analyzing f3b97535eef0cfec768c835cc2294e30bc57dba8c1dd8a568a1a03b6fed915a3
2021/02/20 14:35:03 [INFO] ▶ Analyzing 584984aa43831109bef38f32680451320bf280da8d1736e91dd0fe6100173d13
2021/02/20 14:35:03 [WARN] ▶ Image [google/cadvisor:v0.32.0] contains 4 total vulnerabilities
2021/02/20 14:35:03 [ERRO] ▶ Image [google/cadvisor:v0.32.0] contains 4 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress google/cadvisor:v0.32.0
2021-02-20T14:35:07.167Z        INFO    Need to update DB
2021-02-20T14:35:07.167Z        INFO    Downloading DB...
2021-02-20T14:35:10.651Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T14:35:10.652Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
2021-02-20T14:35:10.652Z        WARN    This OS version is no longer supported by the distribution: alpine 3.7.0
2021-02-20T14:35:10.652Z        WARN    The vulnerability detection may be insufficient because security updates are not provided

google/cadvisor:v0.32.0 (alpine 3.7.0)
======================================
Total: 10 (UNKNOWN: 0, LOW: 0, MEDIUM: 3, HIGH: 5, CRITICAL: 2)
```
