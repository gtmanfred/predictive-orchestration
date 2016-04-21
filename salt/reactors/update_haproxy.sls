{%- if data['items'] %}
update haproxy:
  local.state.apply:
    - tgt: haproxy.gtmanfred.com
{%- endif %}
