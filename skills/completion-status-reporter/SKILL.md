---
name: completion-status-reporter
description: Use this skill when machine-readable completion state is needed for automation, MCP orchestration, or supervisor loops.
---

# Completion Status Reporter

## Required file
`.codex/completion-status.json`

## Minimum schema fields
- complete
- status
- requested_items
- completed_items
- remaining_items
- blocked_items
- validation
- next_action
- safe_to_continue_without_user

## Rules
- Set `complete: true` only when all requested items and validations are satisfied.
- If actionable work remains, keep `complete: false`.
- Keep JSON valid and consistent with natural-language report.
