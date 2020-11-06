Custom scripts to make (my) life easier
--------------------------------------

**How to install?**

Include the following in your `.bashrc` or `.profile` files by adding:

    ```sh
    source $HOME/path_to/backup.sh
    source $HOME/path_to/nvidia.sh
    source $HOME/path_to/wifi.sh
    source $HOME/path_to/smt.sh
    source $HOME/path_to/man.sh
    ```

**NOTE**: Only tested in (Arch) GNU/Linux.

***

### Description

* *backup.sh*: Copies files and folders of interest to a specified location by
a `.conf` file. This configuration file looks like:

  ```plain
    /home/user/directory_A
    /home/user/directory_B
    /home/user/directory_C
    /home/user/file_A.sh
    /home/user/file_B.rs
    /home/user/file_C.so
  ```
  There can be different profiles, each with its own `.conf` and destination.
  By default, I added *HOME* and *WORK*. Simple. But you can add as many as you
  like. To backup the data, type `backup home` or `backup work` in a terminal.
  
* *nvidia.sh*: Enables or disables discrete NVIDIA (OPTIMUS) GPU. Useful to
extend battery life in beefy laptops when this GPU is not needed. Type
`nvidia on` or `nvidia off`. **NOTE: will ask for administrator (root) password
to change status of `/proc/acpi/bbswitch`.**

* *wifi.sh*: Enables or disables wireless interface (handy in non-distracting
environments such as sway, herbstluftwm, i3, etc.). Type `wifi on` or `wifi off`
in a terminal.

* *smt.sh*: Enables or disables simultaneous multithreading (a.k.a.
hyperthreading). Why would you...? **If you crush numbers heavily (model data
fitting, solving ODEs, etc) hyperthreading reduces the computer's
performance by a factor of 2 (the program takes twice as long to complete)**.
This is bad. However, it does improve performance in other tasks (i.e. compiling
kernel takes half the time with hyperthreading). This is good. Type
`hyperthreading on` or `hyperthreading off` before running your software.
**NOTE:** will ask for administrator (root) password to change status of
`/sys/devices/system/cpu/smt/control`.

* *man.sh*: Changes the default colours of the system reference manuals (`man`).
Why not.

***


