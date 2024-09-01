dataset_name=$1

LOG_FILE="logs/${dataset_name}.log"

# Create the logs directory if it doesn't exist
mkdir -p logs

# Run the inference script without GPU argument
python -u inference_for_dataset.py \
    --dataset_dir "/media/hdd2/data/${dataset_name}" \
    2>&1 | tee ${LOG_FILE}
