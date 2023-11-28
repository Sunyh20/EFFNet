## Training
Current this code base works for Python version >= 3.5.

Please install the dependencies: `pip install -r requirements.txt`

First, you could register and download the Deep Globe "Land Cover Classification" dataset here:
https://competitions.codalab.org/competitions/18468

Then please sequentially finish the following steps:
1. `./train_deep_globe_global.sh`
2. `./train_deep_globe_global2local.sh`
3. `./train_deep_globe_local2global.sh`

The above jobs complete the following tasks:
* create folder "saved_models" and "runs" to store the model checkpoints and logging files (you could configure the bash scrips to use your own paths).
* step 1 and 2 prepare the trained models for step 2 and 3, respectively. You could use your own names to save the model checkpoints, but this requires to update values of the flag `path_g` and `path_g2l`.

## Evaluation
1. Please download the pre-trained models for the Deep Globe dataset and put them into folder "saved_models":
* [fpn_deepglobe_global.pth](https://drive.google.com/file/d/1xUJoNEzj5LeclH9tHXZ2VsEI9LpC77kQ/view?usp=sharing)
* [fpn_deepglobe_global2local.pth](https://drive.google.com/file/d/1_lCzi2KIygcrRcvBJ31G3cBwAMibn_AS/view?usp=sharing)
* [fpn_deepglobe_local2global.pth](https://drive.google.com/file/d/198EcAO7VN8Ujn4N4FBg3sRgb8R_UKhYv/view?usp=sharing)
2. Download (see above "Training" section) and prepare the Deep Globe dataset according to the train.txt and crossvali.txt: put the image and label files into folder "train" and folder "crossvali"
3. Run script `./eval_deep_globe.sh`