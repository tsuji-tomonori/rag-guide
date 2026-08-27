# .codex-memory Schema

Use these templates when creating or updating memory files.

## working-memory.md

```markdown
# Working Memory

## Current durable context — updated YYYY-MM-DD HH:MM

### Project purpose
- <stable purpose or user goal>

### Current implementation facts
- <verified implementation fact> — Source: <path/line or commit>

### User/team preferences
- <style, workflow, or review preference> — Source: <source>

### Non-negotiable constraints
- <security/compliance/business constraint> — Source: <source>

### Active risks and watchpoints
- <risk and mitigation>

### Next-session startup checklist
- <first command/check Codex should run>
```

## decisions.md

```markdown
# Decisions

## YYYY-MM-DD — <decision title>

- Status: <accepted|superseded|proposed|rejected|needs review>
- Decision: <decision>
- Rationale: <why>
- Source: <source>
- Supersedes: <optional older decision>
- Review trigger: <when to revisit>
```

## contradictions.md

```markdown
# Contradictions

## YYYY-MM-DD — <topic>

- Claim A: <statement>
  - Source: <source>
  - Authority: <authority note>
- Claim B: <statement>
  - Source: <source>
  - Authority: <authority note>
- Current handling: <blocked|use A temporarily|use B temporarily|needs user decision>
- Risk if unresolved: <impact>
```

## error-patterns.md

```markdown
# Error Patterns

## YYYY-MM-DD — <pattern name>

- Pattern: <recurring mistake>
- Evidence: <sources>
- Likely trigger: <condition>
- Corrective rule: <instruction>
- Verification: <command/check>
- Confidence: <high|medium|low>
```

## archive-candidates.md

```markdown
# Archive Candidates

## YYYY-MM-DD — <candidate group>

- Candidate: <file/section/claim>
- Reason: <duplicate|stale|superseded|low-value generated summary>
- Keep because: <risk or retention reason>
- Proposed action: <keep|archive|merge after review|delete only after approval>
- Confidence: <high|medium|low>
```

## audit-log.md

```markdown
# Dreaming Audit Log

## YYYY-MM-DD HH:MM

- Scope: <scope>
- Sources read: <files/commands>
- Files changed: <files>
- Script output: <optional path>
- Operator: Codex using agent-dreaming-memory skill
- Notes: <important caveats>
```
