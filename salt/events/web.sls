{% if grains.first_highstate is not defined or not grains.first_highstate %}
notify haproxy:
  event.send:
    - name: salt/event/apache/server
    - data:
        hostname: {{grains.fqdn}}

  grains.present:
    - name: first_highstate
    - value: True
{%- endif %}
