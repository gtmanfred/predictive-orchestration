stop firewalld:
  service.dead:
    - name: firewalld
    - disable: True

mask firewalld:
  module.run:
    - name: service.mask
    - m_name: firewalld
    - unless: test -L /etc/systemd/system/firewalld.service

enable iptables:
  service.enabled:
    - name: iptables
