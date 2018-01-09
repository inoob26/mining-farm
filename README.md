# mining-farm
for mining


Для начала устанавливаем xubuntu например 17.10 или 17.04
1) нужно установить драйвера на видео карты
сделать запуском скрипта 

driver_install.sh
далее перезагружаемся или вместо перезагрузки можно использовать restart_ubuntu_lightdm.sh

2) установка cuda 
cuda_install.sh
3) перезагрузка (в скрипте комманда перезагрузки уже вбита)
4) настройка Xorg nvidia_configure.sh
5) внесение строки Option         "RegistryDwords" "PrefLevelSrc=0x2222" в файл xorg.conf  
примерно должно получиться так 
Section "Screen"
    Identifier     "Screen1"
    Device         "Device1"
    Monitor        "Monitor1"
    DefaultDepth    24
    Option         "AllowEmptyInitialConfiguration" "True"
    Option         "Coolbits" "31"
    Option         "RegistryDwords" "PrefLevelSrc=0x2222"
    SubSection     "Display"
        Depth       24
    EndSubSection
EndSection

6) перезагружаемся restart_ubuntu_lightdm.sh

После всех манипуляций уже подстраиваем underclock.sh под себя 
и запускаем его каждый раз перед запуском майнинга

в состав уже входит ethminer и zm miner под Equihash
