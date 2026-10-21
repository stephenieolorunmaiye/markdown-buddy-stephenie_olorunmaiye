<!--
AI Assistance Declaration: I used ChatGPT (GPT-6, accessed 21 October 2026) to draft a verification checklist. The checks below must be performed and completed by me; AI has not performed or certified them. Prompts are recorded in Appendix/AI_Prompts.md. I am responsible for the accuracy and originality of this work.
-->

# Verification and Refinement Log

This log is intentionally a checklist. Complete it after performing the checks; do not mark items complete based only on receiving the draft.

## Required verification pattern

- [ ] **Primary calculation in Sheets:** Import `data/synthetic_sales.csv`. Add a spreadsheet formula for each row's revenue (`units × unit_price`) and calculate overall totals and category summaries.
- [ ] **Independent cross-check:** Run `scripts/analyse_sales.R` in R and compare its output CSVs with the spreadsheet calculations.
- [ ] **Peer or self spot-check:** Manually recalculate at least three rows and one category subtotal. Record the rows and results below.

## Execution and rendering

- [ ] Run the R script from the repository root without errors.
- [ ] Confirm that `outputs/category_summary.csv` and `outputs/overall_summary.csv` are created.
- [ ] Compare each category's units and revenue against the spreadsheet.
- [ ] Preview `README.md` in GitHub (or a GitHub-compatible Markdown preview).
- [ ] Knit or preview `docs/script_documentation.Rmd` in RStudio/Posit Cloud.
- [ ] Confirm that code fences, headings, table formatting, and R Markdown chunks render correctly.
- [ ] Review all disclosures and revise the reflection to accurately describe the work performed.

## Results to record

- Date checks were performed: [enter date]
- R version: [enter version]
- Spreadsheet tool used: [Excel / Google Sheets / other]
- Overall revenue in spreadsheet: [enter verified value]
- Overall revenue in R output: [enter verified value]
- Match? [yes/no; explain any discrepancy]
- Rows manually checked: [enter order IDs and your calculations]
- Category subtotal checked: [enter category and values]
- Markdown preview result: [describe actual result]
- R Markdown knit/preview result: [describe actual result]
- Corrections made after validation: [describe actual changes]

## Markdown structure comparison

The official GitHub Markdown guide explains heading hierarchy, emphasis, lists, and fenced code blocks. The tidyverse README uses clear sections such as Overview, Installation, and Usage, with code examples. This project follows that broad pattern with Overview, Requirements, Installation, Example usage, Data dictionary, Method, Validation, and License. Sources:

- GitHub Docs, “Basic writing and formatting syntax”: https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax
- tidyverse README: https://github.com/tidyverse/tidyverse/blob/main/README.md

I still need to confirm the rendered files in the actual preview tools before submitting.
