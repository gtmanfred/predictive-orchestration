add to cloud:
  runner.queue.insert:
    - queue: cloud
    - items:
        - {{data['data']['id']}}
