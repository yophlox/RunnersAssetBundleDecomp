# Sonic Runners AssetBundle Decompilation (Fork)

A decompilation of Sonic Runners' assetbundles, where the majority of in-game assets are stored and intended to be delivered over the internet.

This is a companion to the [Sonic Runners Unity 2019 Port](https://github.com/yophlox/Runners) repo and will not run without it since it requires assets from the client. They're stored in separate repos because there are thousands of files here that can make working with the client much more unwieldy.

### How To Use

Place the contents of this repo in a folder called `AssetBundles` inside the `Assets` folder of Runners. The folder name is important since editor scripts in this repository reference it directly. Runners also already has the folder `AssetBundles` listed in its `.gitignore` to prevent conflicts.
