# Tool List

Every tool mentioned in the voice note, grouped by function.

## Voice capture & speech-to-text
- **Voice Notes (voicenotes.com)** — mobile voice capture; webhook-capable.
- **ASR** — preferred mobile recording app (better preset control); webhook-capable.
- **Whisper** — first tool that made voice-as-primary-input click.
- **Parakeet** — local STT on desktop.
- **Deepgram** — cloud STT.
- **AssemblyAI** — alternative cloud STT.
- **Gemini (multimodal audio)** — current preferred transcription path; single-pass "transcribe + format + redirect" via prompt.
- **Multimodal Typer** — self-built dictation app, used daily for hours.

## LLMs / inference
- **Claude (Opus 4.7 era)** — primary daily driver; $200 subscription viewed as high-value but probably subsidized.
- **Anthropic API** — used pre-subscription; high burn rate noted.
- **Sonnet** — podcast script generation; praised for vividness.
- **Gemini** — transcription + rotated into podcast script generation.
- **Kimi / MiniMax** — tried in podcast script rotation.
- **DeepSeek** — tried; not worth the quality drop.
- **OpenRouter** — multi-model API access; preferred for per-key billing.

## Agent / coding frameworks
- **Claude Code** — primary agentic workspace, not just a dev tool.
- Evaluated and dropped: **Gemini CLI, Aider, RooCode, Cline, OpenCode, Qwen Code**.
- **Open Interpreter** — liked the concept, abandoned.
- **Dify, Flowise, Langfuse, n8n** — tried as agentic front-ends; none fit.
- **Open WebUI** — used for a while, abandoned after repeated breakage.

## TTS / media
- **Chatterbox on Modal** — serverless GPU TTS; core of the podcast stack (~$0.30/episode).
- **Nano Banana 2 via Fal** — image generation.

## Storage / data / infra
- **Pinecone** — vector DB / RAG.
- **Mem0** — memory layer (recently adopted).
- **Postgres / SQLite / MongoDB** — candidates for chat/prompt/output storage.
- **Cloudflare R2** — podcast episode hosting.
- **Cloudflare** — domains, Tunnel.
- **Vercel** — deployments.
- **NAS + Wasabi/S3** — backups.
- **Home server** — hosting MCPs close to Home Assistant + LAN devices.

## MCP
- **Google Workspace MCP** (self-built; dual personal/business credential stores; attachment support).
- **MCP Jungle / meta-MCP** — aggregators.
- **Gemini transcription MCP** (self-built).

## Interfaces / remote
- **Cloudflare Tunnel / Tailscale** — intended remote-access layer.
- **Custom GPTs** — still considered better than 80% of newer tooling for micro-utilities (e.g., hardware-screw identifier).

## Other
- **Home Assistant** — first serious ChatGPT use case; still central.
- **Telegram** — OSINT signal source; keyword-based alerting.
