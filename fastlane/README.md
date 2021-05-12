fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew install fastlane`

# Available Actions
## iOS
### ios test
```
fastlane ios test
```
Run unit tests
### ios lint
```
fastlane ios lint
```
Run linter and autocorrect issues
### ios generate_all
```
fastlane ios generate_all
```
Generate All FHIR code
### ios generate_stu3_models
```
fastlane ios generate_stu3_models
```
Generate FHIR STU3 models
### ios generate_r4_helpers
```
fastlane ios generate_r4_helpers
```
Generate FHIR R4 Extesnions
### ios generate_r4_tests
```
fastlane ios generate_r4_tests
```
Generate FHIR R4 tests
### ios release_framework
```
fastlane ios release_framework
```
Package and release framework

#### Options

 * **`version`** (required): The new version of the framework

 * **`api_token`** (required): Github API token

 * **`allow_dirty_branch`**: Allows the git branch to be dirty before continuing. Defaults to false

 * **`remote`**: The name of the git remote. Defaults to `origin`. (`DEPLOY_REMOTE`)

 * **`allow_branch`**: The name of the branch to build from. Defaults to `main`. (`DEPLOY_BRANCH`)

 * **`skip_git_pull`**: Skips pulling the git remote. Defaults to false

 * **`is_prerelease`**: Marks GitHub release as Pre-release. Defaults to false
### ios build_xcframeworks
```
fastlane ios build_xcframeworks
```
Build xcframework for distribution
### ios build_project_xcframework
```
fastlane ios build_project_xcframework
```
Build any project xcframework
### ios gh_release
```
fastlane ios gh_release
```
Upload to a github release
### ios update_podspec_version
```
fastlane ios update_podspec_version
```
Update podspecs version
### ios push_podspec
```
fastlane ios push_podspec
```
Push new core podspec to repo
### ios push_all_podspecs
```
fastlane ios push_all_podspecs
```
Push new core podspec to repo
### ios push_core_podspec
```
fastlane ios push_core_podspec
```
Push new core podspec to repo
### ios push_stu3_podspec
```
fastlane ios push_stu3_podspec
```
Push new core podspec to repo
### ios push_r4_podspec
```
fastlane ios push_r4_podspec
```
Push new core podspec to repo
### ios generate_docs
```
fastlane ios generate_docs
```
Generate docs per version using Asciidoctor

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
