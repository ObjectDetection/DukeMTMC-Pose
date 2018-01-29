# DukeMTMC-Pose
Pedestrian Pose for [DukeMTMC-reID](https://github.com/layumi/DukeMTMC-reID_evaluation)(Python and Matlab API)

### Data
18 pedestrian body points have been included in `result` folder.

|File  | Description | 
| --------   | -----  |
|gallery_points.json  | The points of gallery images. |
|train_points.json  | The points of training images.|
|query_points.json  | The points of query images.|

We generated the pose by [OpenPose](https://github.com/CMU-Perceptual-Computing-Lab/openpose). 
Thank their great works. 

**(Note that value is null if the point has not been detected.)**

![](https://github.com/layumi/DukeMTMC-Pose/blob/master/demo.png) 

### API

python: `python_demo.ipynb`

matlab: `matlab_demo.m`


### License

Please refer to `LICENSE_DukeMTMC.txt` and `LICENSE_DukeMTMC-reID.txt`.
