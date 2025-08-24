@echo off
set EXPERIMENT_NAME=just_base
set CONFIG_FILENAME=config_dev

set BASE_PATH=C:\Users\wikto\PycharmProjects\ce-robustness\framework\experiments\%EXPERIMENT_NAME%\
set MODEL_PATH=C:\Users\wikto\PycharmProjects\ce-robustness\framework\experiments\%EXPERIMENT_NAME%\models\
set LOG_PATH=C:\Users\wikto\PycharmProjects\ce-robustness\framework\experiments\%EXPERIMENT_NAME%\logs\
set RESULT_PATH=C:\Users\wikto\PycharmProjects\ce-robustness\framework\experiments\%EXPERIMENT_NAME%\results\

echo Running experiment: %EXPERIMENT_NAME%

call C:\Users\wikto\PycharmProjects\ce-robustness\.venv\Scripts\activate.bat

echo Starting now ...

python experiment_runner.py -cn %CONFIG_FILENAME% --multirun ^
    experiments_setup.posthoc_explainers=[betarob],[robx] ^
    experiments_setup.e2e_explainers=[roar],[rbr] ^
    experiments_setup.base_explainers=[gs],[dice],[face] ^
    experiments_setup.classifiers=[neural_network] ^
    experiments_setup.ex_types=[Weights],[Bootstrap],[Architecture] ^
    experiments_setup.datasets=[rice],[diabetes],[heloc],[wine_quality],[car_eval] ^
    general.result_path=%RESULT_PATH% ^
    general.log_path=%LOG_PATH% ^
    general.model_path=%MODEL_PATH%

pause
