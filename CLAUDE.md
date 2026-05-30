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

Van toepassing op grote bestanden in formaten die MarkItDown ondersteunt:

- **Documenten:** PDF, DOCX, PPTX, XLSX, XLS
- **Web/markup:** HTML, XML, CSV, JSON
- **E-book/mail:** EPUB, Outlook `.msg`
- **Media:** afbeeldingen (EXIF-metadata + optioneel OCR), audio (EXIF-metadata
  + optioneel transcriptie)
- **Overig:** ZIP-archieven (inhoud wordt uitgepakt en geconverteerd),
  YouTube-URL's (transcript)

**Niet gebruiken voor tekst.** Platte tekst en broncode (.txt, .md, .py, .js,
.ts, .json-snippets, .csv-als-tekst, enz.) lees je altijd direct — ongeacht de
grootte. Conversie levert daar geen tokenwinst op en kan opmaak juist verstoren.

Verder niet nodig voor:
- Kleine bestanden (ruwweg < 50 KB) — direct lezen is dan efficiënter.

Handmatig installeren (mocht de hook niet gelopen hebben):
```bash
pip install markitdown --break-system-packages
```
