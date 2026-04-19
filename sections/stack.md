# Stack

The working shape as of 2026-04-19.

| Layer | Tool(s) |
|---|---|
| Voice capture (mobile) | ASR / Voice Notes → webhook |
| STT (desktop, daily) | Multimodal Typer + Parakeet |
| Transcription (long-form) | Gemini multimodal (single-pass format) |
| LLM (agent work) | Claude Code (Opus 4.7) |
| LLM (script / creative) | Sonnet |
| LLM (routing / experiments) | OpenRouter |
| Image gen | Nano Banana 2 via Fal |
| TTS | Chatterbox on Modal (voice-cloned) |
| Memory | Mem0 |
| Vector / RAG | Pinecone |
| MCP hosting | Home server + MCP Jungle aggregator |
| Remote access | Cloudflare Tunnel / Tailscale |
| Deploy | Vercel |
| Domains / edge | Cloudflare |
| Backup | NAS + Wasabi/S3 |
| Doc output | Typst (via skill) |
| GPU (on demand) | Modal |

## Organising pattern

**Repo-as-workspace.** The utility of a repository is the folder structure, not version control. Standard layout: `prompts/`, `outputs/`, `context/`. Skills and MCPs layer on top. Each workspace is a miniature agentic system — scoped, templatable, portable.
