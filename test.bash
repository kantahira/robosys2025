#!/usr/bin/bash[ "${out}" =  15 ] || ng "$LINENO"
# SPDX-FileCopyrightText: 2025 Ryuichi Ueda 　　　　　
# SPDX-License-Identifier: GPL-3.0-only

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

outout=$(seq 5 | ./plus)
[ "${out}" =  15 ] || ng "$LINENO"
[ "$?" =  1 ] || ng "$LINENO"
[ "${out}" =  "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" =  "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res
