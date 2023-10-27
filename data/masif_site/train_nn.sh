masif_root=$(git rev-parse --show-toplevel)
masif_source=$masif_root/source/
masif_data=$masif_root/data/
export PYTHONPATH=$PYTHONPATH:$masif_source:$masif_data/masif_site/

echo "Training Start:"
date
python3 $masif_source/masif_site/masif_site_train.py $1
echo "Training Done:"
date