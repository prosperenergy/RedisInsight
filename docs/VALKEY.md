# Valkey

Prosper runs Valkey (BSD-3, wire-compatible with Redis OSS through 7.2) as the free Redis replacement.

- Official `redis:*` test images at Redis 7.2 or older now use `valkey/valkey:8`.
- `redis-server` / `redis-cli` in those swapped test Dockerfiles are `valkey-server` / `valkey-cli`.
- Kept as-is: Redis Enterprise (`redislabs/redis`), RedisGears, RedisJSON/RediSearch module layers, `redismod` (Graph/Gears/AI/TimeSeries bundles that Valkey does not fully cover), Bitnami images with custom entrypoints, and Redis 7.4+ / 8 milestone images used to exercise newer Redis-only features.
- The ioredis / node-redis clients stay; they talk to Valkey over RESP.
- Optional operator alias: `VALKEY_URL` may point at the same endpoint as a Redis URL.

- Test images that copy RedisJSON/RediSearch/Gears `.so` modules into the server stay on official Redis bases. Those redislabs modules are not loadable in Valkey; use `valkey/valkey-bundle` for a native module set when a fixture does not depend on the exact redislabs `.so` files.
