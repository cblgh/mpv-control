# mpv-control
a collection of scripts to control the mpv media player from the terminal

Makes use of MPV's built in JSON IPC, so that you can run the player in one terminal and control it with scripts in another. 

---
### Usage
#### `./start.sh <media file>`
Starts an mpv media server, running the media file in full screen

#### `./load.sh <media file>`
Loads a new file in the running media server

#### `./start-at.sh <media file> <time in seconds>`
Starts playing the media file at the position specified

#### `./loop.sh <media file>`
Plays a new file and loops it

#### `./seek.sh <time in seconds>`
Seeks the playback of the currently playing file

#### `./restart.sh`
Restarts the currently playing file

#### `./pause.sh`
Pauses the playing file

#### `./unpause.sh`
Unpauses the playing file
