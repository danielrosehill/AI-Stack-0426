# Blockers

Concrete pain points and friction points that are shaping decisions right now.

1. **No good agentic workspace front-end.** Device-agnostic, multi-tool, web + mobile. Dify / Flowise / Langfuse don't fit. SaaS agent builders price for 1–2 heavy agents, not many small utilities.
2. **Claude Code is desktop-bound.** Remote-control features feel backwards. Sandboxed cloud Claude Code can't use arbitrary MCPs or the internet, breaking the workspace pattern.
3. **MCP file-transport is brittle.** Path handling, base64 vs. upload, local-vs-remote MCP servers. No aggregator has solved this cleanly.
4. **MCP context-bloat.** All tools loaded up front. Juggling project vs. user-level definitions is exasperating. Lazy loading is the only sane model.
5. **Env vars / secrets across sessions.** Often ignored. No clean pattern for cross-device skill portability.
6. **Autonomous / scheduled agent actions.** When the laptop is off, the agent is off. No persistent execution substrate for personal use.
7. **Private-podcast tooling gaps.** Analytics, hosting, every piece self-managed; fragile.
8. **Memory reconciliation is hard.** Career goals and preferences are moving targets. Need an agent that reconciles conflicts, not just ingests.
9. **Geo / catalog APIs (e.g., Netflix).** Unofficial or absent — kills otherwise simple personal-agent demos.
10. **Physical-world stakes.** War / ceasefire context; 3-minute shelter window with a 9-month-old drives a real-world need for actionable alerting, not speculation.
11. **Civilian alerting is underbuilt.** Public shelters have no Wi-Fi. Donated routers were stolen. No clean OSINT-to-alert pipeline off the shelf.
12. **AMD GPU.** Makes local AI exploration more painful than Nvidia would.
