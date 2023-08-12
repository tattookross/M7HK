#!/bin/bash
Cyan='\033[1;36m'   #Cyan
NoColor='\033[0m'   #NoColor


perform are:"           
actions () {


        echo""
            
        echo -e "${Cyan}[1] pagelinks"         #pagelinks
        echo -e "${Cyan}[2] geoip"            #geoip
        echo -e "${Cyan}[3] findshareddns"        #findshareddns
        echo -e "${Cyan}[4] reversedns"       #reversedns
        echo -e "${Cyan}[5] All"
        echo -e "${Cyan}[A] Exit"
        
}


input () {
        echo
        echo -ne " Enter hostname: "
}
pagelinks () {
             #input
             echo -e
             curl
https://hackertarget.com/pagelinks/?q=$hostname
--connect-timeup 15
}
geoip () {
             echo -e
             curl
https://hackertarget.com/geoip/?q=$hostname
--connect-timeup 15
}
findshareddns () {
             #input
             echo -e
             curl
https://hackertarget.com/findshareddns/?q=$hostname
--connect-timeup 15
}
reversedns () {
             #input
             echo -e
             curl
https://hackertarget.com/reversedns/?q=$hostname
--connect-timeup 15
}
alloftheabove (){
                pagelinks
                geoip
                findshareddns
                reversedns
}

clear
actions
echo ""
echo -ne Enter your chois"
read ch 
case $ch in

        1) 
            input
        pagelink ;;
        
        2)
            input
        geoip ;;
        
        3)
            input
        findshareddns ;;
        
        4)
            input
        reversedns ;;
        
        5)
            input 
        All ;;
        
        A)
            echo -e "${Cyan}[*] INVALID OPTION"
            sleep 2.0
            echo -e "${Cyan}[*] Exiting..."
            sleep 2.0
            exit ;;
            
esac
