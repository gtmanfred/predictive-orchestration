include:
  - .config

start apache:
  service.running:
    - name: httpd
