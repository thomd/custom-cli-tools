# Custom CLI Tools

## wordpass

> **Note**  
> This CLI tool was built entirely using [Claude Code](https://github.com/anthropics/claude-code) by Anthropic.

Generates memorable passwords in the pattern `adjective-noun-number` (escalating to `adjective-adjective-noun-number` if needed to meet the minimum length), built from a curated list of concrete, easy-to-visualize words (e.g. `purple-tiger-7`) — no network access needed, copies to clipboard, and never repeats a password.

```
wordpass [-c COUNT] [-l LENGTH] [-s CHAR] [--capitalize] [--no-clipboard]
```

- `-c, --count` — number of passwords to generate (default 1)
- `-l, --length` — minimum total password length (default 14)
- `-s, --symbol CHAR` — separator between adjective, noun, and number (default `-`)
- `--capitalize` — capitalize the adjective and noun (default: lowercase)
- `--no-clipboard` — don't copy to clipboard

Env vars: `WORDPASS_HISTORY_SIZE` (default 40, max passwords remembered for dedup), `WORDPASS_NOUNS` / `WORDPASS_ADJECTIVES` (override the built-in word lists with a custom file path).

Install: `make install` (puts it in `$HOME/.local/bin`).
