# Custom CLI Tools

## wordpass

> **Note**  
> This CLI tool was built entirely using [Claude Code](https://github.com/anthropics/claude-code) by Anthropic.

Generates memorable passwords from the [EFF short wordlist](https://www.eff.org/deeplinks/2016/07/new-wordlists-random-passphrases), copies to clipboard, and never repeats a password.

```
wordpass [-c COUNT] [-l MIN_LENGTH] [--number] [--symbol] [--no-clipboard]
```

- `-c, --count` — number of passwords to generate (default 1)
- `-l, --min-length` — minimum length in characters (default 14)
- `--number` — insert a random digit between words
- `--symbol` — append `#`
- `--no-clipboard` — don't copy to clipboard

Env vars: `WORDPASS_HISTORY_SIZE` (default 40, max passwords remembered for dedup), `WORDPASS_WORDLIST` (override the wordlist file path).

Install: `make install` (puts it in `$HOME/.local/bin`).
