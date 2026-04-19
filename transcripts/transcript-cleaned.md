# Cleaned Transcript — 2026-04-19 AI Stack Voice Note

A readable, paraphrased pass over the original ~60 minute voice note. Ums, restarts, and tangents collapsed; meaning preserved. For the raw Gemini transcription see `transcript-verbatim.md`.

---

## Why I recorded this

The purpose of this voice note is to gather context data on my current AI tooling, workflow, and thinking. I started in an app called Voice Notes (voicenotes.com), got about ten minutes in, and decided I may as well capture the whole thing — not just the tools I use, but my thoughts on them, what's working, what isn't. A point-in-time snapshot of all the moving pieces as I see them.

## Voice as the transformative layer

On my Android I use two recording apps — Voice Notes and ASR. Both support webhooks, which has been the key to integrating voice into everything else. Voice has been the single most transformative aspect of AI for me so far, because I'm someone with lots of ideas who struggles with shaping them into projects. Transcription accuracy is so good and so affordable now that the bottleneck moves from "how do I capture this" to "how do I organise it."

Over time my experiments have moved towards Gemini for transcription. Whisper still works; AssemblyAI is very good. But I like using an audio-multimodal model because it does the job in a single pass: here's the audio, clean up the ums, format the output, optionally take it in any direction — turn it into a polished Hebrew email, an English business email, a blog draft. That tiny prompt field is where the power lives.

## Building in public, vibe-coding with Claude

Most of what I'm putting up on GitHub is building in public — things I'm actually using day to day. Someone asked if the work was from a genius or a bot. Neither. The secret sauce is well-defined skills and a consistent repository pattern: a folder for prompts, a folder for outputs, a folder for context.

I gravitated to this pattern because I've always asked the question, "where do these things live?" I was born in the late 1980s, so I think in data-scarce terms. When I first used ChatGPT seriously — to generate Home Assistant YAML — I was impressed enough that I immediately asked: I can't just leave this in a chat history, how do I store it? There still isn't a great answer. The tools treat outputs as ephemeral. I don't think they are. Over time a body of outputs could be distilled into a wiki or a knowledge base.

Connectors from ChatGPT, Claude AI, etc. are heavily biased toward read-only. Claude is especially restrictive on permissions — integrations that only support drafts frustrate me, because I'd rather supervise in the chat and just send.

## Why Claude Code clicked

I've used Linux a long time, so I was initially confused by the return of CLIs. I tried all of them — Gemini, RooCode, Cline, OpenCode, Qwen. Tried them with local models; not very impressive. The Chinese models were substantially worse than Western ones for my use cases (no objection to Chinese models as such).

With Claude, it feels like I've watched a small child grow up — 4 → 4.5 → 4.6 → 4.7. Each iteration, reliability got much better. That's what matters to me more than raw capability: can I step away from the computer and trust that it'll get the task done. When people complained that 4.6 got nerfed, I shared that frustration — I don't need to use it for everything every day, but I need the $200 to be worthwhile for the heavy days, which it still is. I suspect the subscription is subsidised and won't last at that price, so I'm going hard while I can.

I never conceived of Claude Code as a dev-only tool. If it can execute things on Linux, it can do almost anything — the marketing line "to-do list everything" captured it. So I started building repository templates: Home Assistant management, server management, Proxmox. The repo structure miniaturises an agentic system.

## Agentic front-ends — a long unresolved search

For ages I looked for an agentic AI front-end. I used Open WebUI for a while until it broke too many times and I ran out of patience — not a criticism of the project, more about my declining tolerance for brittle infrastructure given how busy life is (the war, a nine-month-old, moving apartment soon).

I want something like a device-agnostic workspace. A place where my little utilities can live. Examples: a meeting-agenda app (dictate a voice note, pull from Google Contacts via MCP, save an agenda to Drive). A hardware-screw identifier — my home inventory system plus a custom GPT that tags photos of screws. A Hebrew-email app — dictate, format into proper Hebrew, sign off "Daniel."

I tried Dify, Flowise, Langfuse, n8n. SaaS agent builders tend to be priced for "two heavy agents for $50/month." That's the wrong shape for me. I don't want two heavy agents; I want many tiny utilities.

Custom GPTs remain, honestly, better than 80% of the newer hot tooling for this. Simple pattern: system prompt + optional MCP. Hard to beat.

## Memory and personalised AI

I've always been drawn to proactively ingesting memory for personalised AI. A good demo case is a movie-recommendation bot — deceptively simple. The moment you try it, you run into real problems: memory layer, state management, geo-aware catalog data (Netflix has no official API), etc.

I experimented with voice-driven memory ingestion — record preferences, use an agent to extract facts and reformat them ("Daniel loves thrillers"). Then I tried an interview-style approach: an agent that asks me questions and fills gaps. The next idea was making it proactive — it notices my career context is stale and prompts me to update it. But quickly you see non-obvious problems: career context is a moving target, so you need reconciliation of conflicts, not just ingestion.

I've recently started using Mem0, including for my AI podcast.

## The podcast

Somewhere along the way I got frustrated with ChatGPT not storing outputs, tried Open WebUI, tried a wiki. The wiki worked technically, but I never actually sat down to read it. Audio is where I consume best. With our son Ezra I spend hours a day holding him and getting him to sleep, which made audio even more essential.

So I built a private podcast: `myworldprompt.com`. Self-hosted was too risky for personal content. After a few failed attempts I cracked the recipe: Chatterbox on Modal for TTS (serverless GPU, voice-cloned from two stuffed animals — a sloth and a donkey), Sonnet for script generation, posting to R2, onto a feed, out to Spotify. About $0.30 per 30-minute episode. I listen to literal hours per day; it's become my private information channel, possibly my best AI project to date.

Sonnet is worth the money for script generation — the vividness is second to none. I tried DeepSeek and others; not worth it. One episode on pilgrimages to ancient Jerusalem was genuinely immersive.

## Image, eval, STT on the desktop

Image generation: Nano Banana 2 via Fal. I like Fal because per-key billing is easy to access — something Google Cloud Platform did poorly or not at all. OpenRouter gives me multi-model access with the same property.

Billing lessons learned the hard way. Two incidents, roughly $100 each — one on LLM-council / Snow-Globe-style experiments, one on Google grounding API (their pricing is hard to read). Since then I care a lot about per-key billing and alerts. With those in place, the fear of runaway cost goes away.

Informal evals: for each podcast episode I rotate through Gemini, Sonnet, Kimi and listen to the result. Crude but effective, and cheap.

Desktop STT: Parakeet locally, Deepgram when cloud. I built Multimodal Typer — I use it hours every day. Running on AMD GPU has made local AI generally more painful than Nvidia would.

## Local AI and character consistency

I'm not particularly sensitive on privacy — I'll use paid APIs that don't train on my data. Local AI hasn't earned a place in my stack.

One thing I did notice in local AI communities: heavy interest in character persistence and role-play, including Lorebooks. That's relevant to my podcast — each episode has a system prompt and the characters feel like they're developing, almost accidentally. That observation nudged me back towards memory layers and eventually to Mem0.

## Pinecone and building for scale

Pinecone is brilliant for vector DB / RAG. I have an unusual philosophy: build with tools that scale from day one, even when I'm nowhere near needing that scale. I'd rather learn Pinecone than use a SaaS RAG wrapper, because Pinecone grows with me.

## LLM councils and multi-perspective simulation

The LLM-council pattern is genuinely powerful. I use it for career planning and have been using it to process news during the war. I've developed a cynical view of the information coming through Israeli media — I've never felt so alienated from the news on all sides. I rely more on OSINT sources: military-focused Telegram channels, The Warzone, SITREP-style formats.

Beyond intelligence, the most underexplored use case for agentic AI is probably brainstorming and stakeholder role-play on entrenched civic problems. A conversation with Mike Taylor (Rally) got me thinking about this. Example: Jerusalem car-honking — technically illegal, drives residents nuts. Go to city hall and you quickly learn it's a mess of overlapping stakeholders. Police have no time; municipality delegated authority and doesn't want it. There are hundreds or thousands of problems like this where multi-perspective simulation could surface options a single human wouldn't. From there it scales up to bigger things — policy wargaming, conflict modelling.

## Preparedness, because the ceasefire is brittle

Context for why actionable alerting matters so much: we live in an older building without a private shelter. Our son is nine months old. The civilian alert system gives three minutes to get to shelter. In that window we have to get him out of the apartment, bags on, torches, down the stairs, into the public shelter, underground enough to be safe. That can happen at 3 a.m.

Public shelters often don't have Wi-Fi, so you don't know when there's an all-clear. I donated two routers to our local shelter; both were stolen. The Israeli government has, in my view, criminally under-invested in this infrastructure.

As a result I've spent time building hacky preparedness tools — Telegram keyword monitors ("ballistic missile launches", etc.) that can buy two minutes of early warning. Also a geopolitical monitoring dashboard. None of this exists off-the-shelf at civilian scale; it's built for multimillion-dollar enterprise.

## The workspace pattern (and why repos are the right container)

This informs most of my recent building. I was alienated by purely code-defined agentic frameworks — no front-end, all Python. With Claude Code the "front-end" is the terminal, and you define things in natural-language Markdown, not Python. The folder structure becomes the spec.

The side-benefit nobody talks about: if you store prompts, outputs, and chats — and these are tiny text files, you could fit a lifetime in SQLite — you create what I'd call a *latent value space*. Extract memory from chat history. Extract a prompt library from prompt history. Extract a wiki from outputs. You don't need the extraction tool today; you just need to start capturing now so you can backfill later.

## MCP — mixed feelings

MCP is good in principle. In practice:

- Integration patterns from Claude AI / ChatGPT are still far too read-only. I built Google Workspace MCP (personal + business credential stores in one server, with attachment support) because the existing options didn't cut it.
- Path / file-transport handling is brittle. If I have a transcription MCP and a "blog-creator" repo template, I need the MCP to live on my home server, not locally — but then it needs a file-transport layer (base64 or upload). Nobody has solved this cleanly.
- Context bloat — all tools loaded up front. I ended up building tight project-level definitions, then hitting warnings, then removing them. Exasperating. MCP Jungle and meta-MCP help. Lazy loading is the only sane model.

## Skills may be eating MCP

A seditious thought I've had for a while: when MCPs fail, I often fall back to "just use the CLI." GH CLI, Wrangler. It frequently works better than the MCP. With agent skills, I can codify those patterns — "this is how I generate tech diagrams via the Fal API" — and the problem shifts from *centralise MCPs* to *sync skills across devices*. That's a more tractable problem.

There are still sharp edges — secrets and env vars across sessions, device portability — but these feel like architectural gaps, not capability gaps. The raw intelligence, context window, task management — those are good now. What's missing is interface.

## The desktop-bound problem

Claude Code works beautifully when I'm at my desk. It falls down when I'm out — remote-control tools don't really work, and Anthropic's sandboxed cloud Claude Code can't reach arbitrary MCPs or the internet, which defeats the whole workspace pattern.

The other fatal flaw: autonomous or scheduled actions. When my laptop is off, the agent is off. When the session closes, the agent closes. For personal use we need a persistent execution substrate.

## What the stack looks like right now

Vercel for deployments — second to none. Cloudflare for domains, R2 for storage, Tunnel for remote access. A NAS plus Wasabi/S3 for backups. A home server for MCPs close to Home Assistant and LAN devices. OpenRouter for multi-model API access. Paid inference from Claude, OpenRouter, MiniMax. Typst (via a skill) for doc output so I can actually read and print the results.

Data sovereignty still matters to me even when compute doesn't. I'm fine with cloud inference. I want exportable memory and chat layers.

That's where I stand on 19 April 2026.
