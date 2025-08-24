## Acknowledgment

This repository contains an **adapted version** of the BetaRCE method from the original work:

**Original repository:** [https://github.com/istepka/betarce](https://github.com/istepka/betarce)  
**Article:** *Counterfactual Explanations with Probabilistic Guarantees on their Robustness to Model Change* by Ignacy Stę̨pka, Mateusz Lango, and Jerzy Stefanowski, SIGKDD 2025. The article is available at [arXiv](https://arxiv.org/abs/2408.04842).

This version includes modifications and adaptations to suit the master thesis titled "Studying the influence of counterfactual plausibility on its robustness under model changes", conducted under the supervision of Ph.D Habil. Full Professor Jerzy Stefanowski.

The original work is licensed under [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).  
Proper credit must be given to the original authors when sharing or distributing this adaptation.

---

## Setup of the adapted framework

### 1. Setup Dependencies

```bash
git clone https://github.com/Stokrotkiblawatki/ce-robustness.git
git submodule update --init --recursive
```
---

### 2. Install Environment

Tested on Python 3.11.7: 
```bash
python -m pip install -r requirements.txt
```

---

## Project structure

        `experiments`   
        ├── `notebooks`  
        ├── `visualizations`
        ├── `thesis`
        `images`    
        `data`   
        `configs`    
        `src`    
        ├── `explainers`    
        ├── `datasets`  
        ├── `classifiers`  
        ├── `experiment.py`  
        `experiment_runner.py`  
  

---

## Experimental results

The quantitative results, plots, and notebooks used for the thesis are located in the `experiments/thesis` folder.

        `thesis`   
        ├── `cleaned_results`  
        ├── `notebooks`
        ├── `plots`
        ├── `raw_results`
        `acc_change.csv`

In the folder:
1. `cleaned_results` contains results that were used to generate the tables and plots in the thesis,
2. `notebooks` includes .ipynb files used for processing the results,
3. `plots` contains the plots analysed in the 6th chapter of the thesis,
4. `raw_results` includes raw results files that were further processed,
5. `acc_change.csv` consists of records demonstrating the magnitude of model change.

---

## Reproducing experiments

To run the experiments conducted for the thesis:

1. Set up the desired parameters of the experiment in `configs/config_dev.yaml`.
2. Depending on the operating system, adjust the methods, classifiers, datasets, and type of model changes in the appropriate script:
   - `experiments/just_base.sh` (Linux and macOS), 
   - `experiments/just_base.bat` (Windows).
3. Run the experiments from the repository root with the command:
   - Linux and macOS:
     ```bash
     ./experiments/just_base.sh
     ```
   - Windows:
     ```bat
     .\experiments\just_base.bat
     ```
4. The results of the experiments will appear in the folder: `experiments/just_base/results`.

   
