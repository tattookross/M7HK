#!/bin/bash 
 Black='\033[1;30m'        # Black 
 Red='\033[1;31m'          # Red 
 Green='\033[1;32m'        # Green 
 Yellow='\033[1;33m'       # Yellow 
 Blue='\033[1;34m'         # Blue 
 Purple='\033[1;35m'       # Purple 
 Cyan='\033[1;36m'         # Cyan 
 White='\033[1;37m'        # White 
 NC='\033[0m' 
 blue='\033[0;34m' 
 white='\033[0;37m' 
 lred='\033[0;31m' 
 brown='\033[0;33m' 
  
 logo () { 
 echo -e "\033[1;31m \t 
  
 
 \t███  ${White}by: M7HKUMBRELLA a.k.a y_k_007${Red}███ 
 
 "; 
 } 
 actions () { 
         echo -e "${Purple}[~] Available Actions to perform are:"         
         echo ""
           
         echo -e "${Cyan}[1]  PageLinks"    #pagelinks         
         echo -e "${Cyan}[2] GeoIP"        #geoip            
         echo -e "${Cyan}[3] SharedDNS"    #findshareddns         
         echo -e "${Cyan}[4]  ReverseDNS"   #reversedns 
         echo -e "${Yellow}[5] All of the Above" 
         echo -e "${Red}[Q]  Exit" 
} 
input () { 
         echo -ne "${Green}[#] Enter Hostname: ${White}" 
         read hostname; 
} 
 pagelinks () { 
         #input 
         #echo -e "${Red}------------------------------------${white}" 
         echo 
         echo -e "${Blue}+--------------------------------+${White}" 
         echo -e "${Blue}+         ${Yellow}[${Green}PageLinks${Yellow}]${Blue}            +${White}" 
         echo -e "${Blue}+--------------------------------+${White}" 
  
         curl https://api.hackertarget.com/pagelinks/?q=$hostname --connect-timeout 15 
  
 } 
 shareddns () { 
         #input 
         #echo -e "${Red}------------------------------------${white}" 
         echo 
         echo -e "${Blue}+--------------------------------+${White}" 
         echo -e "${Blue}+          ${Yellow}[${Green}SharedDNS${Yellow}]${Blue}           +${White}" 
         echo -e "${Blue}+--------------------------------+${White}" 
  
         curl https://api.hackertarget.com/findshareddns/?q=$hostname --connect-timeout 15 
  
 } 
 geoip () { 
         #input 
         #echo -e "${Red}------------------------------------${white}" 
         echo 
         echo -e "${Blue}+--------------------------------+${White}" 
         echo -e "${Blue}+            ${Yellow}[${Green}GeoIP${Yellow}]${Blue}             +${White}" 
         echo -e "${Blue}+--------------------------------+${White}" 
  
         curl https://api.hackertarget.com/geoip/?q=$hostname --connect-timeout 15 
  
} 
 reversedns () { 
         #input 
         #echo -e "${Red}------------------------------------${white}" 
         echo 
         echo -e "${Blue}+--------------------------------+${White}" 
         echo -e "${Blue}+         ${Yellow}[${Green}reverseDNS${Yellow}]${Blue}           +${White}" 
         echo -e "${Blue}+--------------------------------+${White}" 
         ip=$(curl https://api.hackertarget.com/hostsearch/?q=$hostname --connect-timeout 15 | grep "$hostname" | sed 's/.*,//') 
         curl https://api.hackertarget.com/reversedns/?q=$ip --connect-timeout 15 
  
 } 
alloftheabove (){
                pagelinks
                geoip
                findshareddns
                reversedns
 } 
  
 clear 
 logo 
 actions 
 echo "" 
 echo -ne "${Green}[#] Enter your choice: ${White}" 
 read ch 
 case  $ch  in 
  
        1) 
            input
        pagelinks ;;
        
        2)
            input
        geoip ;;
        
        3)
            input
        shareddns ;;
        
        4)
            input
        reversedns ;;
        
        5)
            input 
        alloftheabove ;;
        
        Q)         
         echo -e "${Cyan}[*] Exiting..." 
         sleep 0.2 
         exit ;; 
  
  
        *) 
         echo -e "${Cyan}[*] INVALID OPTION"   
         sleep 0.2 
         echo -e "${Cyan}[*] Exiting..." 
         sleep 0.2 
         exit ;; 
  
esac 
  
  
 
