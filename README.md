# Custom CLI Tools

## wordpass

> **Note**  
> These CLI tools were built entirely using an Coding Agent.

Generates memorable passwords in the pattern `adjective-noun-number` (escalating to `adjective-adjective-noun-number` if needed to meet the minimum length), built from a curated list of concrete, easy-to-visualize words (e.g. `purple-tiger-7`) — no network access needed, copies to clipboard, and never repeats a password.

```
wordpass [-c COUNT] [-l LENGTH] [-s CHAR] [--capitalize] [--no-clipboard] [--purge-history]
```

- `-c, --count` — number of passwords to generate (default 1)
- `-l, --length` — minimum total password length (default 14)
- `-s, --symbol CHAR` — separator between adjective, noun, and number (default `-`)
- `--capitalize` — capitalize the adjective and noun (default: lowercase)
- `--no-clipboard` — don't copy to clipboard
- `--purge-history` — delete all saved passwords from history and exit

Env vars: `WORDPASS_HISTORY_SIZE` (default 40, max passwords remembered for dedup), `WORDPASS_NOUNS` / `WORDPASS_ADJECTIVES` (override the built-in word lists with a custom file path).

Generated passwords are stored in `$XDG_STATE_HOME/wordpass/history.txt`, or `~/.local/state/wordpass/history.txt` when `XDG_STATE_HOME` is unset.

Install: `make install` (puts it in `$HOME/.local/bin`).

## Development

Run the unit tests with:

```
python3 -m unittest -q
```

## Completions

`bash_completion.d/` carries Bash completion scripts:

| Completion | Description |
| ---------- | ----------- |
| `code` | Completes `code` (VS Code CLI) options from `code --help` and `--profile` names from `~/Library/Application Support/Code/User/globalStorage/storage.json` (macOS) |
| `wordpass` | Completes `wordpass` options |

Installed by `make install` into `$HOME/etc/bash_completion.d`.
