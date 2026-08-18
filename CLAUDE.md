# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A static-content Mitsubishi Pajero fan page, live at https://mitsubishipajero.info
(also bound to www.mitsubishipajero.info). ASP.NET Core Razor Pages, .NET 10 (upgraded
from .NET Core 3.1 in Aug 2026). No database, no auth — just pages under
`MitsubishiPajero/Pages/` (Dakar, Galerie, Modelle, …) and assets in `wwwroot/`.
The `2007/` folder is the archived old site from 2007 — historical, not deployed.

## Commands

```sh
dotnet build MitsubishiPajero.sln                              # build
cd MitsubishiPajero && dotnet run --no-launch-profile          # run locally → http://localhost:5000
```

**Deploy = push to `master`.** The GitHub Actions workflow
(`.github/workflows/master_mitsubishipajero-web.yml`) publishes the app (.NET 10) and
deploys to the App Service `mitsubishipajero-web` (resource group `live-websites`, same
setup as pwdsafe). Auth is OIDC via the shared managed identity `oidc-msi-9293`
(federated credential `github-pajero-master`, Website Contributor on the app).
Quirk: use the legacy zipdeploy API (`az webapp deployment source config-zip`) —
OneDeploy/`az webapp deploy` returns 503 on these apps.

## Conventions

- Razor Pages with the classic `Startup`/`Program` split — fine to keep; don't churn it.
- Do not add a `web.config` to the project — publish generates the correct one. A stray
  dev web.config once forced `ASPNETCORE_ENVIRONMENT=Development` in prod.
- Content is German with an English mirror under `Pages/en/` (folder mapping:
  Modelle↔Models, Galerie↔Gallery, Autos↔Cars, Fahrer↔Drivers, Rueckblick↔History,
  Impressum↔Imprint).
  The language switcher in `_Layout.cshtml` depends on the trees staying 1:1 — every new
  page needs its counterpart (plus sitemap entries for both). English pages have no
  code-behind; galleries reuse the German PageModels via `@model`.
- Keep new pages consistent with the existing layout in `Pages/Shared/`.
