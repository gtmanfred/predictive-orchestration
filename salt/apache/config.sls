include:
  - .packages

configure apache:
  file.managed:
    - name: /var/www/html/index.html
    - contents_grains: fqdn
