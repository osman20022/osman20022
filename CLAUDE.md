# Project guidance

## Grote bestanden lezen via MarkItDown

`markitdown` (Microsoft, https://github.com/microsoft/markitdown) is in dit
project beschikbaar als utility en wordt bij elke web-sessie automatisch
geïnstalleerd via de SessionStart hook (`.claude/hooks/session-start.sh`).

**Gebruik MarkItDown voordat je een groot, rijk-geformatteerd bestand analyseert.**
Dit zet het bestand om naar compacte Markdown en bespaart tokens.

Werkwijze:

1. Converteer eerst naar Markdown:
   ```bash
   markitdown /pad/naar/groot-bestand.html > /tmp/output.md
   ```
2. Lees daarna `/tmp/output.md` in plaats van het originele bestand.

Van toepassing op grote bestanden in formaten die MarkItDown ondersteunt, o.a.:
HTML, PDF, DOCX, XLSX, PPTX, CSV, JSON, XML en EPUB.

Niet nodig voor:
- Kleine bestanden (ruwweg < 50 KB) — direct lezen is dan efficiënter.
- Broncode en platte tekst (.py, .js, .ts, .md, .txt, enz.) — lees die direct,
  want conversie levert geen winst op.

Handmatig installeren (mocht de hook niet gelopen hebben):
```bash
pip install markitdown --break-system-packages
```
