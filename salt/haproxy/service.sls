include:
  - .iptables
  - .config

start haproxy:
  service.running:
    - name: haproxy
    - reload: True
    - listen:
      - file: configure haproxy
