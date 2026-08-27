# scrublog

Opinionated log housekeeping tool with dry-run support

Started as a weekend hack, grew on me.

## Install

```bash
pip install -r requirements.txt
python -m logwash --help
```

## What it does

- Filter by age (--older-than) or size (--larger-than)
- Archive matched logs into a timestamped .tar.gz
- Scan directories for log files by glob pattern
- Exit codes friendly for cron and CI
- Dry-run mode shows what would happen, touches nothing

## Examples

```bash
# show what would be cleaned, change nothing
logwash ./logs --older-than 30 --dry-run

# archive logs older than 30 days
logwash ./logs --older-than 30 --archive ./backup
```

## Project structure

```text
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   └── bug_report.md
│   └── dependabot.yml
├── docs/
│   ├── configuration.md
│   ├── faq.md
│   ├── roadmap.md
│   └── usage.md
├── examples/
│   └── quickstart.md
├── logwash/
│   ├── __init__.py
│   ├── __main__.py
│   ├── cli.py
│   └── utils.py
├── tests/
│   ├── test_cli.py
│   └── test_smoke.py
├── .editorconfig
├── .gitattributes
├── .gitignore
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
├── Makefile
├── SECURITY.md
├── pyproject.toml
└── requirements.txt
```

## Development

```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
python -m pytest -q
```

## Development

```bash
# run the test suite
pytest -q   # or npm test / go test ./...
```

## License

MIT. Do whatever you want.
