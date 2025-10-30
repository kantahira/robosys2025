#!/usr/bin/bash

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0
a=平沢
[ "$a" = 片沢 ] || ng "$LINENO"
[ "$a" = 平沢 ] || ng "$LINENO"

exit $res
