%% smooth
bidspm(fmriprep_dir, ...
       derivatives, ...
       'subject', ...
       'action', 'smooth', ...
       'task', {'Motion'}, 'space', ...
       {'MNI152NLin6Asym'}, 'fwhm', 6);

%% stat
bidspm(bids_dir, derivatives, 'subject',
       'action', 'stats', ...
       'preproc_dir', preproc_dir,
       'model_file', model_file, ...
       'fwhm', 6);

bidspm(bids_dir, derivatives, 'dataset',
       'action', 'stats', ...
       'preproc_dir', preproc_dir,
       'model_file', model_file, ...
       'fwhm', 6);
