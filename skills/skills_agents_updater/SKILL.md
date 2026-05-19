---
name: skills_agents_updater
description: Update, create, validate, and diff repository skill and agent definitions, especially under skills/, skills/agents/, agents/, skils/, or skisl/agents/. Use this when the user asks to modify AI skill packages, agent prompts, agent manifests, or related registries.
---

# Skills / Agents Updater Skill

Use this skill when a task involves creating, updating, or validating repository-local AI **skills** and **agents**. It is designed for projects that keep definitions in paths such as:

- `skills/<skill_name>/SKILL.md`
- `skills/agents/*`
- `agents/*`
- `.agents/*`
- common typo / legacy paths such as `skils/*` or `skisl/agents/*`

## Default workflow

1. **Locate the repository root** from the working directory or from the user-provided path.
2. **Scan first**. Build an inventory of candidate skill and agent files before editing.
3. **Plan edits from intent**. Identify whether the user wants to create a new skill, create a new agent, update existing prompts, update metadata, or regenerate an index/registry.
4. **Apply changes with dry-run diff first** unless the user explicitly requested direct writing.
5. **Validate after changes**:
   - each `SKILL.md` has YAML front matter with `name` and `description`
   - skill names are unique
   - modified markdown files remain readable and structured
   - agent files are not silently overwritten
6. **Report exactly what changed**. Include paths touched, validation warnings, and the diff summary.

## Safety rules

- Never overwrite existing skill or agent files without either a backup or a diff that makes the replacement obvious.
- Do not invent project-specific agent behavior when the repository already has conventions; inspect nearby files and mirror their style.
- Preserve existing front matter keys unless the task explicitly asks to remove them.
- Prefer narrow edits over wholesale rewrites.
- If the target path is misspelled (`skisl`, `skils`), treat it as intentional only when it exists; otherwise use the canonical `skills` path and mention the correction.

## Helper script

The included helper can scan, create, patch, validate, and produce diffs:

```bash
python scripts/update_skills_agents.py --root . --scan
python scripts/update_skills_agents.py --root . --spec examples/update_spec.yaml
python scripts/update_skills_agents.py --root . --spec examples/update_spec.yaml --write --backup
```

Use `--write` only when the requested edit is ready to be committed. Without `--write`, the script prints a unified diff and does not modify files.

## Common tasks

### Create a new skill

```bash
python scripts/update_skills_agents.py --root . \
  --create-skill repo-maintainer \
  --set-frontmatter "description=Maintain repository conventions and update related agent files" \
  --write --backup
```

### Create a new agent in `skills/agents`

```bash
python scripts/update_skills_agents.py --root . \
  --agents-dir skills/agents \
  --create-agent reviewer \
  --write --backup
```

### Patch an existing `SKILL.md`

```bash
python scripts/update_skills_agents.py --root . \
  --file skills/example/SKILL.md \
  --set-frontmatter "description=Updated description" \
  --append-section "Workflow=Validate first, then update, then diff." \
  --write --backup
```

See `tasks/update_skills_agents.md` for the full operating procedure.
