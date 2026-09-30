# cloud development setup

These commands prepare the repository; they do not create or publish a Codex Cloud environment.

In Settings > Codex Cloud > Environments, create or edit an environment containing only this repository. Ask setup to use the commands below, review its report, then publish after checks pass. Keep access set to Only me. New tasks use the published setup. Repository refresh does not rerun installation; republish after dependency changes requiring new packages or tools.

Use package-manager network access for installation. Do not add deployment credentials, production bindings, VPN access, homelab mounts, or source from other projects. Read the root AGENTS.md privacy boundary before assigning work.

See [the official OpenAI cloud environments guide](https://learn.chatgpt.com/docs/environments/cloud-environments).

## commands

Use a Linux environment with a C++17 compiler. Set CXX only to select a different compiler.

Check compiler: `bash .codex/setup.sh`

Validate baseline: `bash .codex/validate.sh`

No persistent service is needed. The baseline compiles and runs src/Ch01/01_02e/CodeDemo.cpp in a temporary directory. It checks toolchain readiness, not every exercise. For changed exercises, compile that exercise’s source files together using the existing VS Code task as guidance; run representative inputs from its directory. Do not combine unrelated main functions. Preserve instructor attribution and licenses.
