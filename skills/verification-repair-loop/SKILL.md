---
name: verification-repair-loop
description: Use this skill whenever code/config/build/test/doc changes should be validated before completion.
---

# Verification Repair Loop

## Purpose
Run checks after changes and repair failures before completion.

## Required behavior
1. Select relevant validation commands.
2. Run targeted checks first.
3. If a check fails, fix root cause and re-run.
4. Run broader checks when change scope requires.
5. Do not report completion with known unresolved failures.
