[![Generate OpenAPI clients](https://github.com/Bright-Research/imednet_sdk_collection/actions/workflows/generate-clients.yml/badge.svg)](https://github.com/Bright-Research/imednet_sdk_collection/actions/workflows/generate-clients.yml)

# iMednet OpenAPI Client SDK Generator

This project takes the **iMednet OpenAPI specification** (`spec/openapi.yaml`) and automatically generates client SDKs for all languages supported by the OpenAPI Generator using GitHub Actions workflows.

---

## How it works

Whenever the OpenAPI spec is updated, GitHub Actions will:

1. **Validate** the OpenAPI spec.
2. **Generate client SDK code** for every supported language listed below.
3. **Push** the generated code for each language to its own dedicated branch named `generated-<language>-client`.

Updating the OpenAPI spec therefore automatically updates all SDKs for every language, with each language's code isolated in its own branch for easy access and integration.

---

## Supported languages

The following languages and frameworks are supported:

```
ada
android
apex
bash
c
clojure
cpp-qt-client
cpp-restsdk
cpp-tiny (beta)
cpp-tizen
cpp-ue4 (beta)
crystal (beta)
csharp
dart
dart-dio
eiffel
elixir
elm
erlang-client
erlang-proper
gdscript
go
groovy
haskell-http-client
java
java-helidon-client (beta)
java-micronaut-client (beta)
javascript
javascript-apollo-deprecated (deprecated)
javascript-closure-angular (beta)
javascript-flowtyped
jaxrs-cxf-client
jetbrains-http-client (experimental)
jmeter
julia-client (beta)
k6 (beta)
kotlin
lua (beta)
n4js (beta)
nim (beta)
objc
ocaml
perl
php
php-dt (beta)
php-nextgen (beta)
powershell (beta)
python
python-pydantic-v1
r
ruby
rust
scala-akka
scala-gatling
scala-http4s
scala-pekko
scala-sttp
scala-sttp4 (beta)
scalaz
swift-combine
swift5
swift6 (beta)
typescript (experimental)
typescript-angular
typescript-aurelia
typescript-axios
typescript-fetch
typescript-inversify
typescript-jquery
typescript-nestjs (experimental)
typescript-node
typescript-redux-query
typescript-rxjs
xojo-client
zapier (beta)
```

---

## Branch workflow

* Each language's generated SDK is pushed to its own branch: `generated-<language>-client`.
* Any update to the OpenAPI spec will automatically regenerate and update all SDK branches.

This makes it easy to keep all client SDKs up‑to‑date and accessible for any language supported by the OpenAPI Generator.

---

## Workflows

### `generate-clients.yml`

* **Trigger:** After a successful `validate-openapi.yml` run or manual invocation.
* **Purpose:** Uses `openapitools/openapi-generator` to generate API clients for several languages (Java, JavaScript, Python, Ruby, R, Rust, Go, C# and C). The resulting client code for each language is pushed to a dedicated branch named `generated-<language>-client`. You can adjust the language matrix to suit your needs.

### `build-docs.yml`

* **Trigger:** After a successful `validate-openapi.yml` run or manual invocation.
* **Purpose:** Bundles static HTML documentation using ReDoc and pushes the result to the `generated-docs` branch. The workflow also uploads the site as a Pages artifact and deploys it using `actions/deploy-pages` so the API docs are published with GitHub Pages.

### `deploy-api-docs.yml`

* **Trigger:** Pushes to `main`, after validation succeeds, or manual invocation.
* **Purpose:** Generates ReDoc HTML and deploys it to GitHub Pages, similar to `build-docs.yml`, but includes additional setup for the Pages environment and concurrency controls. The generated documentation is also kept on the `generated-docs` branch. Use this workflow if you want an all‑in‑one build and deploy job on the `main` branch.

---

### Branch workflow

1. Work on your OpenAPI specification in a feature branch or the `staging` branch. When pushing to `staging`, the **auto‑fix** workflow may commit missing titles back for you.
2. Create a pull request targeting `main`. Once merged, the `validate-openapi.yml` workflow verifies the spec.
3. After successful validation the documentation and client generation workflows run automatically and publish their results.

---

Enjoy effortless, multi‑language SDK generation and documentation publishing for **iMednet**!
