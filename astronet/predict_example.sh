# Directory to save model checkpoints into.
MODEL_DIR="/home/idies/workspace/Storage/tdo/planets_ml/checkpoints/"

# Directory to save output TFRecord files into.
TFRECORD_DIR="/home/idies/workspace/Storage/tdo/planets_ml/tfrecord"

TCE_CSV_FILE="/home/idies/workspace/Storage/tdo/planets_ml/q1_q17_dr24_tce.csv"

# Directory to download Kepler light curves into.
KEPLER_DATA_DIR="/home/idies/workspace/Storage/tdo/planets_ml/data/"


# Generate a prediction for a new TCE.

bazel-bin/astronet/predict \
  --model=AstroCNNModel \
  --config_name=local_global \
  --model_dir=${MODEL_DIR} \
  --kepler_data_dir=${KEPLER_DATA_DIR} \
  --kepler_id=11442793 \
  --period=91.9395 \
  --t0=134.307\
  --duration=0.4175 \
  --output_image_file="kepler-90i.png"