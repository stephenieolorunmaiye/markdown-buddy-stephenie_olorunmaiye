# AI Assistance Declaration:
# I used ChatGPT (GPT-6, accessed 21 October 2026) for suggestions on script structure and comments.
# Prompts are listed in ../Appendix/AI_Prompts.md. I must run and verify all calculations myself.
# I am responsible for the accuracy and originality of this work.

# Purpose: Summarise a small synthetic retail sales dataset.
# Run this script from the repository root with:
# source("scripts/analyse_sales.R")

input_file <- file.path("data", "synthetic_sales.csv")
output_dir <- "outputs"

if (!file.exists(input_file)) {
  stop("Input file not found: ", input_file,
       ". Run this script from the repository root.")
}

sales <- read.csv(input_file, stringsAsFactors = FALSE)

required_columns <- c("order_id", "order_date", "category", "units", "unit_price")
missing_columns <- setdiff(required_columns, names(sales))
if (length(missing_columns) > 0) {
  stop("Missing required column(s): ", paste(missing_columns, collapse = ", "))
}

if (nrow(sales) == 0) {
  stop("The input dataset has no rows.")
}

if (anyNA(sales[required_columns])) {
  stop("Missing values detected in required columns; inspect the input before analysis.")
}

if (!is.numeric(sales$units) || !is.numeric(sales$unit_price)) {
  stop("The units and unit_price columns must be numeric.")
}

if (any(sales$units < 0) || any(sales$unit_price < 0)) {
  stop("Units and prices must be non-negative.")
}

# Calculate revenue for each order line.
sales$revenue <- sales$units * sales$unit_price

# Summarise by category using base R.
category_summary <- aggregate(
  cbind(units, revenue) ~ category,
  data = sales,
  FUN = sum
)
category_orders <- aggregate(
  order_id ~ category,
  data = sales,
  FUN = function(x) length(unique(x))
)
names(category_orders)[2] <- "order_count"
category_summary <- merge(category_orders, category_summary, by = "category")
category_summary <- category_summary[order(category_summary$category), ]

# Overall descriptive totals.
overall_summary <- data.frame(
  order_lines = nrow(sales),
  unique_orders = length(unique(sales$order_id)),
  total_units = sum(sales$units),
  total_revenue = sum(sales$revenue)
)

if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

write.csv(category_summary,
          file.path(output_dir, "category_summary.csv"),
          row.names = FALSE)
write.csv(overall_summary,
          file.path(output_dir, "overall_summary.csv"),
          row.names = FALSE)

message("Analysis finished. Review the CSV files in the outputs/ folder.")
