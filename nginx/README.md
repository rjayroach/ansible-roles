## vars

Set vars before including this role

```yaml
nginx_upstreams:
  - { name: 'api_gateway', server: '172.28.128.6:3000' }
  - { name: 'dashboard', server: '127.0.0.1:4200' }
nginx_servers:
  - { name: 'www.my-cool-website.local', proxy_pass: 'http://api_gateway' }
  - { name: 'cache.my-cool-website-local', proxy_pass: 'http://api_gateway' }
```
