docker run -it --rm \
    -v $sourcedata:/sourcedata \
    -v $derivatives:/derivatives \
    -v $model_dir:/models \
        cpplab/bidspm:latest \
            /sourcedata/raw \
            /derivatives \
            subject \
            --action stats \
            --preproc_dir /derivatives/bidspm-preproc \
            --model_file /models/smdl.json \
            --fwhm 6
