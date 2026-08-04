# phluts_cli

Official command-line interface for the [Phluts](https://pub.dev/packages/phluts) SDUI framework. Use this CLI to quickly initialize Phluts configurations, build projects, log in to Phluts Cloud, and manage deployments.

📚 **[Full CLI Documentation available at docs.phluts.dev/cli](https://docs.phluts.dev/cli)**

## Install

**macOS / Linux**
```bash
curl -fsSL https://raw.githubusercontent.com/PhlutsDev/install/main/install.sh | bash
```

**Windows (PowerShell)**
```powershell
irm https://raw.githubusercontent.com/PhlutsDev/install/main/install.ps1 | iex
```

## Quick start

```bash
phluts --version
phluts login
phluts init
phluts build
phluts deploy
```

## Environment

The CLI reads credentials from:

- `~/.phluts/.env` (prod)
- `~/.phluts/.env.dev` (dev)

Required keys:

- `PHLUTS_BASE_API_URL`
- `PHLUTS_GOOGLE_CLIENT_ID`
- `PHLUTS_GOOGLE_CLIENT_SECRET` (optional)
- `PHLUTS_FIREBASE_API_KEY`

Set environment in code via `currentEnvironment` in `lib/src/config/env.dart`.

