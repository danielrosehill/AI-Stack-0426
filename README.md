# AI Stack — Point-in-Time Snapshot (2026-04-19)

A ~60 minute voice note walking through my current AI tooling, workflows, what's working, what isn't, and where the gaps are. Transcribed with Gemini (via the `gemini-transcription` MCP, raw mode), then broken down into structured sections.

Not a polished essay or a recommendation — a footprint: what I was using, what I was stuck on, and what felt like an opportunity on a specific Sunday during a fragile ceasefire.

## 📄 Full document

**[ai-stack-2026-04-19.pdf](ai-stack-2026-04-19.pdf)** — sections + cleaned transcript as appendix.

## Stack at a glance

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
| Doc output | Typst |
| GPU (on demand) | Modal |

**Organising pattern — repo-as-workspace.** The utility of a repository is the folder structure, not version control. Standard layout: `prompts/`, `outputs/`, `context/`. Skills and MCPs layer on top.

## Repo layout

```
.
├── audio/                      # source recording (VAD-trimmed)
│   └── 2026_04_19_13_01_40.opus
├── sections/                   # structured notes extracted from the voice note
│   ├── stack.md                # layered view of the working stack
│   ├── tool-list.md            # every tool mentioned, grouped by function
│   ├── thoughts.md             # philosophy, takeaways, unresolved questions
│   ├── blockers.md             # concrete pain points and friction
│   └── opportunities.md        # gap-shaped ideas worth exploring
├── transcripts/
│   ├── transcript-verbatim.md  # raw Gemini transcription, unedited
│   └── transcript-cleaned.md   # readable paraphrased pass
├── document.typ                # Typst source for the compiled PDF
├── styles.typ                  # shared Typst styling
├── build.sh                    # regenerate the PDF
└── ai-stack-2026-04-19.pdf     # compiled output
```

## Source audio

`audio/2026_04_19_13_01_40.opus` — ~60 min, recorded on Android, silence trimmed via ffmpeg VAD (-30 dB RMS, 0.8 s min-silence).

## Rebuilding the PDF

```bash
./build.sh
```

Requires `pandoc` and `typst`.
