# ColbyForecasting2025

ColbyForecasting2025 is a repository of course materials, tutorials, and reproducible analysis code for ocean forecasting developed for a Colby/Bigelow Laboratory course. The codebase supports ingesting observational data (buoys, OBIS, coastal sources), preparing covariates, training models, assembling ensembles, generating forecasts, and evaluating forecast performance. For the project made by Tyshawn Rene specifically, data on Jonah Crab observations was used. See the file "JP246 2025 Writeup Tyshawn Rene.pdf"

**What this project does**
- **Data ingestion:** helpers to load and clean observations from buoys, OBIS, and coastal sources.
- **Covariate preparation:** spatial and temporal covariate generation used for modeling.
- **Modeling & ensembles:** train models (tidymodels/ranger and others), build ensembles, and evaluate performance with standard metrics.
- **Forecasting & prediction:** generate forecasts, visualizations, and outputs for decision-support or downstream analysis.
- **Reproducible workflows:** scripts and Quarto notebooks that document and reproduce the full analysis pipeline.

**Quick start**
- Install required packages and source helper functions by running:

```bash
Rscript setup.R
```

- Ensure your data lives in a folder pointed to by `ROOT_DATA_PATH` in `setup.R` (default: `~/ColbyForecastingData`). Create subfolders like `buoys/`, `coast/`, `brickman/` as needed.
- Render the tutorial site locally with:

```bash
quarto render
```

or preview in RStudio by opening the `.qmd` files.

**Repository structure (high-level)**
- **Site & tutorials:** [index.qmd](index.qmd), [C00_coding.qmd](C00_coding.qmd), [C01_observations.qmd](C01_observations.qmd), [C02_background.qmd](C02_background.qmd), [C03_covariates.qmd](C03_covariates.qmd), [C04_models.qmd](C04_models.qmd), [C05_prediction.qmd](C05_prediction.qmd), [B01_ensembles.qmd](B01_ensembles.qmd), [about.qmd](about.qmd)
- **Functions:** [functions/](functions/) — R helper scripts, e.g., `observations.R`, `buoys.R`, `obis.R`, `prep_model_data.R`, `model.R`, `ensemble.R`, `predict.R`, `metrics.R`, `workflow.R`.
- **Assignments:** [assignments/](assignments/) contains assignment scripts used in the course.
- **Docs site:** generated HTML site in [docs/](docs/) (Quarto output).
- **Setup helper:** [setup.R](setup.R) installs packages and sources functions.
- **License:** [LICENSE](LICENSE)

**Typical workflow**
1. Set up package environment and source functions via `Rscript setup.R`.
2. Place or link data into the path referenced by `ROOT_DATA_PATH`.
3. Use the Quarto tutorials (`*.qmd`) interactively to run data prep, modeling, and forecasting steps.
4. Train models and evaluate using utilities in `functions/`.
5. Combine models into ensembles and produce forecasts.
6. Render the docs site with `quarto render` to publish results.

**Notes**
- Data are intentionally not included in the repository. See `setup.R` for the expected `ROOT_DATA_PATH` location.
- Some packages are installed from GitHub or custom repos by `setup.R`; run it in an environment with internet access.

