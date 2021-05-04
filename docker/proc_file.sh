#!/bin/sh

if [[ -f /usr/bin/jd_bot && -z "$DISABLE_SPNODE" ]]; then
  CMD="spnode"
else
  CMD="node"
fi

echo "处理jd_crazy_joy_coin任务。。。"
if [ ! $CRZAY_JOY_COIN_ENABLE ]; then
   echo "默认启用jd_crazy_joy_coin杀掉jd_crazy_joy_coin任务，并重启"
<<<<<<< HEAD
   eval $(ps -ef | grep "jd_crazy" | grep -v "grep" | awk '{print "kill "$1}')
=======
   eval $(ps -ef | grep "jd_crazy_joy_coin" | grep -v "grep" | awk '{print "kill "$1}')
>>>>>>> 38ef06e0f37966a6f0d2d9104caf164b2b197ae7
   echo '' >/scripts/logs/jd_crazy_joy_coin.log
   $CMD /scripts/jd_crazy_joy_coin.js | ts >>/scripts/logs/jd_crazy_joy_coin.log 2>&1 &
   echo "默认jd_crazy_joy_coin重启完成"
else
   if [ $CRZAY_JOY_COIN_ENABLE = "Y" ]; then
      echo "配置启用jd_crazy_joy_coin，杀掉jd_crazy_joy_coin任务，并重启"
<<<<<<< HEAD
      eval $(ps -ef | grep "jd_crazy" | grep -v "grep" | awk '{print "kill "$1}')
=======
      eval $(ps -ef | grep "jd_crazy_joy_coin" | grep -v "grep" | awk '{print "kill "$1}')
>>>>>>> 38ef06e0f37966a6f0d2d9104caf164b2b197ae7
      echo '' >/scripts/logs/jd_crazy_joy_coin.log
      $CMD /scripts/jd_crazy_joy_coin.js | ts >>/scripts/logs/jd_crazy_joy_coin.log 2>&1 &
      echo "配置jd_crazy_joy_coin重启完成"
   else
<<<<<<< HEAD
      eval $(ps -ef | grep "jd_crazy" | grep -v "grep" | awk '{print "kill "$1}')
      echo "已配置不启用jd_crazy_joy_coin任务，不处理"
=======
      eval $(ps -ef | grep "jd_crazy_joy_coin" | grep -v "grep" | awk '{print "kill "$1}')
      echo "已配置不启用jd_crazy_joy_coin任务，仅杀掉"
>>>>>>> 38ef06e0f37966a6f0d2d9104caf164b2b197ae7
   fi
fi
