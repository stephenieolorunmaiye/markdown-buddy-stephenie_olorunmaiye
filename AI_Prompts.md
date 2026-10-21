<!--
AI Assistance Declaration: I used ChatGPT (GPT-6, accessed 21 October 2026) to help draft and organise the prompt log. This appendix records prompts used to support documentation. I am responsible for checking all outputs and for the final submission.
-->

# Appendix: AI Prompts and Key Responses

## Tool details

- Tool: ChatGPT
- Model/version displayed for this session: GPT-6
- Date accessed: 18 October 2026
- Purpose: Documentation planning, Markdown formatting suggestions, R Markdown organization, and reflection scaffolding.
- Note: This file records the prompts used to create this draft. Add any additional prompts you actually use and retain the key responses required by your course.

## Prompt 1 — README structure (seed prompt from assignment)

**Prompt**

> Explain what sections a good GitHub README for an R data analysis project should include.

**Key response summary**

A useful README normally identifies the project and its purpose, explains setup and dependencies, gives usage examples, describes inputs and outputs, and provides limitations, licensing, and contribution or contact information where relevant.

## Prompt 2 — README refinement (assignment prompt)

**Prompt**

> Revise the sections list so it’s concise and uses Markdown headers and bullet formatting.

**Key response summary**

Use a clear heading hierarchy and concise sections. Keep lists short and use fenced code blocks for executable examples.

## Prompt 3 — Markdown critique (assignment prompt)

**Prompt**

> Check the Markdown syntax for correctness and readability.

**Key response summary**

Check that heading levels are consistent, blank lines separate blocks, tables have header separators, lists use consistent markers, and fenced code blocks open and close correctly. The rendered preview still needs to be checked manually.

## Prompt 4 — README drafting (adapted to this project)

**Prompt**


**Key response summary**

A README draft was organised around overview, project structure, requirements, installation, usage, data dictionary, method, outputs, validation, license, and AI disclosure.

## Prompt 5 — README improvement (assignment prompt)

**Prompt**

> Add sections for Installation, Example Code, and License. Keep tone concise and professional.

**Key response summary**

Installation steps and a short `source()` example were added, together with a license section. The usage instructions specify that the script should run from the repository root.

## Prompt 6 — README validation (assignment prompt)

**Prompt**

> Review the Markdown for syntax errors and suggest 2 improvements for clarity.

**Key response summary**

The draft uses standard Markdown headings, fenced code blocks, and a data dictionary table. Two clarity improvements are to state the expected working directory and to explain the output files and their contents.

## Prompt 7 — R Markdown documentation (adapted from assignment)

**Prompt**

> Here is my R script description: it reads a synthetic sales CSV, validates fields, calculates revenue, summarises results by category and overall, and writes CSV output files. Suggest Markdown formatting and code block examples.

**Key response summary**

Organise the document into Purpose, Inputs, Processing steps, Example code, Outputs, Limitations, How to run, and Verification notes. Use fenced R code chunks for examples.

## Prompt 8 — R Markdown refinement (assignment prompt)

**Prompt**

> Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs).

**Key response summary**

A YAML header was included, followed by a single top-level purpose heading and second-level sections. R code chunks use `r` as the language identifier.

## Prompt 9 — R Markdown critique (assignment prompt)

**Prompt**

> Is the Markdown consistent with RMarkdown best practices?

**Key response summary**

The document includes a YAML header, Markdown headings, and fenced R chunks. Before submission, knit or preview it in RStudio and confirm that the YAML and chunk syntax render as expected.

## Prompt 10 — verification planning

**Prompt**

> Create a checklist for verifying a simple R analysis using a primary calculation in Sheets, an independent cross-check, and a peer or self spot-check. Do not claim the checks have been performed.

**Key response summary**

Use a spreadsheet to calculate line revenue and totals, compare with R-generated summaries, manually check selected rows and a category subtotal, and record actual outcomes in a verification log.

## Additional student entries

Add any additional prompts and paste or summarise the key responses you actually used here. Do not invent a history of AI interactions.
