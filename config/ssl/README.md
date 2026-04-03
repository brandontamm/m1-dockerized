# Local HTTPS certificates

TLS material is **not** stored in this repository. Before the first `docker compose up`, run:

```bash
./config/ssl/generate-dev-cert.sh
```

This creates `cert.pem`, `cert.key`, and `cert.csr` in this directory for local development only. Replace them with your own certificates if needed.
