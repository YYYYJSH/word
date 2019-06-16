
echo -e "\033[37;40m"
if (whiptail --title "欢迎使用" --yesno \
"	HELLO～
	本小程序为背单词程序
	在给定文件输入想要背的单词即可
	是否进入游戏?" 11 60)then
clear
welcome
echo -e "\033[?25h"
while true
do
clear
log
if [ $flag = 0 ];then
echo -e "\033[6;52H\033[37;41m主菜单"
echo -e "\033[10;42H准备游戏....................1"
echo -e "\033[14;42H\033[37;44m退出游戏................4|q|Q\033[37;40m"
echo -ne "\033[42m\033[18;45Hplease input you choice: "
read choice
fi
case $choice in
1)#进入
	clear
	flag=1
	if [ $flag = 1 ];then
	menu0 $choice
	fi;; 

4|q|Q)#退出
	clear
	if (whiptail --title "EXIT" --yesno "是否退出游戏?" 10 60)then
                flag=1
		end
	        clear
		echo -e "\033[30;47m"
                exit
        else
                flag=0
        fi;;
*)#错误处理
	if [ $choice ];then
	whiptail --title "ERROR" --msgbox "错误选项 请重新选择" 10 60
	else
		flag=0
	fi;;
esac
done
else
	echo -e "\033[30;47m"
	exit
fi	
