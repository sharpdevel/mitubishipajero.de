# mitsubishipajero.info

A fan page for the **Mitsubishi Pajero**, live at **https://mitsubishipajero.info**.
ASP.NET Core Razor Pages on .NET 10 — pure static content: no database, no accounts,
just pages and pictures. German with an English version under `/en`.

## Languages

`Pages/en/` is a 1:1 mirror of the German page tree with translated folder names:
`Modelle`↔`Models`, `Galerie`↔`Gallery`, `Autos`↔`Cars`, `Fahrer`↔`Drivers`,
`Rueckblick`↔`History`, `Impressum`↔`Imprint`. The language switcher and hreflang links in
`Pages/Shared/_Layout.cshtml` map URLs between the trees using exactly that segment
mapping — **when adding a page, always add its counterpart in the other tree**, or the
switcher will emit a 404 link. English pages have no code-behind (galleries reuse the
German PageModels via `@model`). New pages also belong in `wwwroot/sitemap.xml` (both
languages).

## Content

| Section    | What's there                                                        |
|------------|---------------------------------------------------------------------|
| `Modelle`  | The model generations — L040, V20, V60, V80 and their evolution      |
| `Dakar`    | The Pajero's Dakar Rally history — cars, drivers, retrospectives     |
| `Galerie`  | Photo galleries                                                      |
| `2007/`    | The archived original site from 2007 (kept for nostalgia, not deployed) |

## Build & run

```sh
dotnet build MitsubishiPajero.sln
cd MitsubishiPajero
dotnet run --no-launch-profile   # → http://localhost:5000
```

No configuration needed.

## Deploy

**Push to `master`.** The GitHub Actions workflow
(`.github/workflows/master_mitsubishipajero-web.yml`) publishes the app and deploys it to
the Azure App Service `mitsubishipajero-web` via OIDC.
Note: the workflow uses the legacy zipdeploy API on purpose — OneDeploy
(`az webapp deploy`) returns 503 on this app.

## History

Started in 2007 as a classic hand-written HTML site, migrated to ASP.NET Core in 2020,
upgraded to .NET 10 in 2026. The original 2007 site lives on in the `2007/` folder.

## License

[MIT](LICENSE) — the code, that is. Photos and texts are fan content; the Mitsubishi and
Pajero names belong to Mitsubishi Motors.
