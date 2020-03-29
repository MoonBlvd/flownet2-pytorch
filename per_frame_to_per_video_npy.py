import os 
import numpy as np
import glob
import pdb
from tqdm import tqdm 

all_vid_folders = glob.glob('/home/data/vision7/JAAD/flownet2/*')
for vid_folder in tqdm(all_vid_folders):
    all_files = sorted(glob.glob(os.path.join(vid_folder, '*.npy')))
    per_vid_flows = []
    for np_file in all_files:
        per_vid_flows.append(np.load(np_file))
    per_vid_flows = np.stack(per_vid_flows, axis=0)

    save_name = vid_folder + '.npy'
    np.save(save_name, per_vid_flows)

