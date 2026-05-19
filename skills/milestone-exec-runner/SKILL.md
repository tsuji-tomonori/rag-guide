---
name: milestone-exec-runner
description: Use this skill for complex features, significant refactors, migrations, multi-file tasks, or long-running implementation work.
---

# Milestone Exec Runner

## Purpose
Break large tasks into milestones and execute until done, verified, or explicitly blocked.

## Rules
- Do not stop at plan creation unless user asked for planning only.
- Start Milestone 1 immediately after planning.
- After each milestone, run milestone validation and fix failures.
- Keep statuses updated: pending / in_progress / done / blocked.
- Continue with independent unblocked milestones when safe.
