# Updating skills and agents

This playbook is for modifying AI skill packages and agent prompt/configuration files in a repository.

## 1. Inventory

Run a scan from the repository root:

```bash
python scripts/update_skills_agents.py --root . --scan
```

Review:

- detected skill roots
- detected agent roots
- each `SKILL.md` path and front matter
- duplicate names or missing descriptions
- unexpected typo paths such as `skils` or `skisl`

## 2. Choose the target paths

Use these defaults unless the repository already uses another convention:

- skills: `skills/<name>/SKILL.md`
- agents: `skills/agents/<name>.md` when agents are part of the skills area, otherwise `agents/<name>.md`

When both typo and canonical directories exist, do not merge them automatically. Update only the path requested by the user or the convention already dominant in the repo.

## 3. Dry-run every non-trivial update

Without `--write`, the helper prints a unified diff:

```bash
python scripts/update_skills_agents.py --root . --spec update_spec.yaml
```

Inspect the diff before writing. For multi-file changes, confirm the diff touches only intended files.

## 4. Write with backup

```bash
python scripts/update_skills_agents.py --root . --spec update_spec.yaml --write --backup
```

Backups are written next to the original file using a timestamped `.bak-YYYYMMDDHHMMSS` suffix.

## 5. Validate

```bash
python scripts/update_skills_agents.py --root . --validate
```

Validation checks include:

- `SKILL.md` front matter exists
- `name` and `description` are present
- duplicate skill names are reported
- agent markdown files with front matter can be parsed

## 6. Final response pattern

Report:

- files created or modified
- whether the change was dry-run only or written
- validation result
- any assumptions, especially around `skills` vs `skils` / `skisl`
