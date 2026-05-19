---
name: task-completion-guardian
description: Use this skill when the user asks Codex to finish all tasks, not stop early, run to completion, complete everything, continue until done, or avoid premature final answers.
---

# Task Completion Guardian

## Purpose
Prevent premature completion and enforce a completion gate before final answer.

## Operating contract
1. Convert the request into an explicit checklist.
2. Identify acceptance criteria and validation commands.
3. Execute all actionable checklist items.
4. If validation fails, fix and re-run validation.
5. Do not claim completion while actionable items remain.

## Completion gate
- All requested deliverables are done.
- Relevant checks were run, or a concrete reason is documented.
- No unresolved known failures remain.
- Blocked items are labeled as blocked, never complete.

## Final response format
### Completed
- ...

### Verified
- Command: `...`
  - Result: pass/fail/not run

### Remaining / blocked
- None / ...
