# Thoughts

Philosophy, takeaways, and unresolved questions surfaced during the voice note.

- **Voice is the most transformative AI shift personally.** STT accuracy + cost deflects the problem from "write it down" to "how to organise it."
- **Claude Code is not a dev tool — it's a miniature agentic workspace.** The repo's value is the folder, rarely version control.
- **Reliability has mattered more than raw capability.** Each Claude iteration (4 → 4.7) improved reliability most. That's what enables walk-away tasks.
- **Build to scale from day one.** Prefer Pinecone over SaaS RAG; learn the scaling tool early even if overkill now.
- **Outputs are not ephemeral.** Storing prompts / outputs / chats creates a latent value space — retro-backfillable into memory, prompt libraries, wikis.
- **Skills may be displacing MCPs.** A well-maintained CLI + a skill that knows how to use it often beats an MCP. The problem shifts from "centralise MCPs" to "sync skills."
- **Agentic AI should catalyse learning, not dumb down the user.**
- **Python question is unresolved.** Worth continuing, but at what level if agents write the code? LangGraph / Pydantic likely higher leverage than raw Python fluency.
- **Multi-perspective simulation is underexplored.** LLM councils for stakeholder role-play on thorny civic/policy issues — beyond the marketing-proxy framing.
- **Local AI isn't compelling yet** — VRAM / GPU cost prohibitive on AMD; OpenRouter is fine; privacy isn't a strong personal motivator if the provider doesn't train on data.
- **Billing hygiene is essential.** Two past incidents (~$100 each on LLM councils and Google grounding) ingrained the need for per-key billing + alerts.
- **Informal evals are cheap and high-value.** Rotating models per podcast episode became a de-facto eval harness.
- **Data sovereignty matters even when compute doesn't.** Happy with cloud inference; want exportable memory and chat layers.
- **Custom GPTs still beat most newer tooling** for one-shot micro-utilities. The simple pattern (system prompt + optional MCP) is hard to top.
