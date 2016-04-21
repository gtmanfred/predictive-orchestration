include:
  - .packages

configure haproxy:
  file.managed:
    - name: /etc/haproxy/haproxy.cfg
    - source: salt://haproxy/files/haproxy.cfg.jinja
    - template: jinja
