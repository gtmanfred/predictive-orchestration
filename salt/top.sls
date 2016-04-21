base:
  '*':
    - iptables
  'haproxy*':
    - haproxy
  'web*':
    - apache
    - events.web
