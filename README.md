### Desktop Shortcut Maker

This is a simple script to create a linux desktop file from keyboard parameters and move it to folder where shortcuts are stored.

**An important note** :  in order to move the desktop file to the proper folder, it's necessary to run the command as root.

#### Input parameters

* -h: help for the script
* -n: application name
* -i: path to application's icon
* -e: path to application executable
* -t: true or false to run on terminal
* -c: application categories

##### Examples of use:

``` 
sudo ./desktop_shortcut_maker.sh -n "Pycharm" -i "/home/familiavieira/Downloads/pycharm-community-2021.3/bin/pycharm.png" -e "/home/familiavieira/Downloads/pycharm-community-2021.3/bin/pycharm.sh" -t "false" -c "Development"
```


```
sudo  ./desktop_shortcut_maker.sh -n "Xampp" -i "/home/familiavieira/Imagens/xampp_logo.png" -e "/opt/lampp/manager_linux_x64.run" -t "true" -c "TextEditor"
```



