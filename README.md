<!--
AI Assistance Declaration: I used ChatGPT (GPT-6, accessed 21 October 2026) for documentation planning, Markdown drafting, and suggestions for organizing an R analysis project. Prompts used are recorded in Appendix/AI_Prompts.md. I must verify all code and calculations myself using the methods recorded in Verification.md. I am responsible for the accuracy and originality of this work.
-->

# Synthetic Retail Sales Analysis

A small R project demonstrating a reproducible workflow for summarising a **synthetic** retail sales dataset. It is designed for the BDA400 Markdown Buddy assignment and contains no real customer or personal data.

## Overview

The project reads a CSV file, validates its basic structure, calculates sales summaries by product category, and saves the results as CSV files. The example is intentionally small so that the calculations can be checked manually in a spreadsheet.

## Project structure

```text
markdown-buddy-yourname/
├── README.md
├── Reflection.md
├── Verification.md
├── Appendix/
│   └── AI_Prompts.md
├── data/
│   └── synthetic_sales.csv
├── docs/
│   └── script_documentation.Rmd
└── scripts/
    └── analyse_sales.R
```

## Requirements

- R (version 4.1.0 or later recommended)
- No third-party R packages are required; the script uses base R.

## Installation

1. Download or clone this repository.
2. Open the project folder in RStudio or another R environment.
3. Confirm that `data/synthetic_sales.csv` is present.
4. Run the script from the repository root.

## Example usage

Run the analysis from the project root:

```r
source("scripts/analyse_sales.R")
```

The script reads `data/synthetic_sales.csv` and creates:

- `outputs/category_summary.csv` — order count, units sold, and revenue by category.
- `outputs/overall_summary.csv` — overall row count, total units, and total revenue.

The script creates the `outputs/` folder if it does not already exist. Inspect the generated files after running the script; do not assume output values without executing and checking the analysis.

## Data dictionary

| Column | Type | Description |
|---|---|---|
| `order_id` | Character | Synthetic order identifier |
| `order_date` | Date-like text | Date of the fictional order, in `YYYY-MM-DD` format |
| `category` | Character | Fictional product category |
| `units` | Integer | Number of units in the order line |
| `unit_price` | Numeric | Price per unit in arbitrary currency units |

## Method

1. Import the CSV using `read.csv()`.
2. Check required columns, missing values, and whether units and prices are non-negative.
3. Calculate line revenue as `units * unit_price`.
4. Aggregate order lines by category and calculate overall totals.
5. Export summaries as CSV files for review.

## Validation and limitations

- The dataset is synthetic and only demonstrates a basic workflow.
- The analysis is descriptive; it does not establish causal relationships or represent real business performance.
- Before submission, run the script in R, inspect the output files, compare calculations with an independent spreadsheet calculation, and complete the checklist in `Verification.md`.
- The README and R Markdown document should be previewed in GitHub or RStudio to confirm that headings, tables, and code chunks render correctly.

## License

This educational example is released under the MIT License. You may reuse and adapt it with attribution. See the standard MIT license terms at <https://opensource.org/license/mit/>.

## AI Assistance Disclosure

- **Tool and version:** ChatGPT, GPT-6, accessed 21 October 2026.
- **Purpose:** Helped outline the README, suggest Markdown structure, and draft documentation and reflection prompts.
- **Main prompts:** See [`Appendix/AI_Prompts.md`](Appendix/AI_Prompts.md).
- **Changes and verification:** The project uses a clearly labelled synthetic dataset and base R. The student must run the script, compare output totals against a spreadsheet, self-check selected rows, preview the Markdown/R Markdown, and record actual results in [`Verification.md`](Verification.md). Do not claim these checks were completed until you have performed them.
