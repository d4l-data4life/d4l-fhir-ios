fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios test

```sh
[bundle exec] fastlane ios test
```

Run unit tests

### ios lint

```sh
[bundle exec] fastlane ios lint
```

Run linter and autocorrect issues

### ios generate_all

```sh
[bundle exec] fastlane ios generate_all
```

Generate All FHIR code

### ios generate_stu3_models

```sh
[bundle exec] fastlane ios generate_stu3_models
```

Generate FHIR STU3 models

### ios generate_r4_helpers

```sh
[bundle exec] fastlane ios generate_r4_helpers
```

Generate FHIR R4 Extesnions

### ios generate_r4_tests

```sh
[bundle exec] fastlane ios generate_r4_tests
```

Generate FHIR R4 tests

### ios prepare_release

```sh
[bundle exec] fastlane ios prepare_release
```

Prepare release

#### Options

 * **`version`** (required): The new version of the framework

 * **`api_token`** (required): Github API token

### ios prepare_snapshot

```sh
[bundle exec] fastlane ios prepare_snapshot
```

Prepare snapshot

### ios build_fhir

```sh
[bundle exec] fastlane ios build_fhir
```

Build all xcframeworks

### ios update_readme_versions

```sh
[bundle exec] fastlane ios update_readme_versions
```

Update version numbers in README.adoc

### ios update_plist_versions

```sh
[bundle exec] fastlane ios update_plist_versions
```

Update version number in project plists

### ios update_badge

```sh
[bundle exec] fastlane ios update_badge
```

Update readme badge

### ios build_xcframework

```sh
[bundle exec] fastlane ios build_xcframework
```

Build any project xcframework

### ios create_github_draft

```sh
[bundle exec] fastlane ios create_github_draft
```

Upload to a github release draft

### ios generate_docs

```sh
[bundle exec] fastlane ios generate_docs
```

Generate docs per version using Asciidoctor

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
