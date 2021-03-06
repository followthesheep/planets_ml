# Directory to save model checkpoints into.
MODEL_DIR="/home/idies/workspace/Storage/tdo/planets_ml/checkpoints/"

# Directory to save output TFRecord files into.
TFRECORD_DIR="/home/idies/workspace/Storage/tdo/planets_ml/tfrecord"

TCE_CSV_FILE="/home/idies/workspace/Storage/tdo/planets_ml/q1_q17_dr24_tce.csv"

# Directory to download Kepler light curves into.
KEPLER_DATA_DIR="/home/idies/workspace/kepler/data/kepler/data"


# Generate a prediction for a new TCE.

bazel-bin/astronet/predict \
  --model=AstroCNNModel \
  --config_name=local_global \
  --model_dir=${MODEL_DIR} \
  --kepler_data_dir=${KEPLER_DATA_DIR} \
  --kepler_id=10666592 \
  --period=25.9757 \
  --t0=132.034\
  --duration=0.09425\
  --output_image_file="kepler-10811496.png"