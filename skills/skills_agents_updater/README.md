# skills_agents_updater

A reusable skill package for creating, updating, validating, and diffing repository-local AI skills and agents.

## Install

Copy this folder into your skills directory, for example:

```bash
cp -R skills_agents_updater /path/to/repo/skills/skills_agents_updater
```

Or use the helper script directly from any checkout:

```bash
python skills_agents_updater/scripts/update_skills_agents.py --root /path/to/repo --scan
```

## Typical commands

Dry-run an update spec:

```bash
python scripts/update_skills_agents.py --root . --spec examples/update_spec.yaml
```

Write changes with backups:

```bash
python scripts/update_skills_agents.py --root . --spec examples/update_spec.yaml --write --backup
```

Create an agent under `skills/agents`:

```bash
python scripts/update_skills_agents.py --root . --agents-dir skills/agents --create-agent updater --write --backup
```

Validate a repository:

```bash
python scripts/update_skills_agents.py --root . --validate
```
