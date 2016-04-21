add to haproxy:
  runner.queue.insert:
    - queue: haproxy
    - items:
        - {{data['id']}}
