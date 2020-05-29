train:
	mlflow run -e train.py .

train_databricks: 
	mlflow run . -b databricks --backend-config ./cluster_config.json \
		-e train.py --experiment-id $$(mlflow experiments list | grep "${EXP_NAME}" | awk '{print $$1}')
