
# Usage

## Running Locally
```
mlflow run -e train.py .
```

## Running on Databricks

Steps

1. Setup Databricks cli profile 
```
databricks configure --profile <profile> --token
```
3. Create MLFlow experiment on Databricks 
```
MLFLOW_TRACKING_URI=databricks://<profile> mlflow experiments create -n /Users/<your folder>/<path to your project or smth>
```
3. Initiate run 
```
MLFLOW_TRACKING_URI=databricks://<profile> mlflow run . -b databricks --backend-config ./cluster_config.json -e train.py --experiment-d <experiment-id from step 2>
```

## Run with Makefile
set `MLFLOW_TRACKING_URI` and `EXP_NAME`
```
make train_databricks
```
