#!/bin/bash
# SPDX-FileCopyrightText: 2025 Kanta Hirazawa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(echo 2025 | ./year_conv)
[ "${out}" = "令和7年" ] || ng "$LINENO"

out=$(echo s64 | ./year_conv)
[ "${out}" = "1989" ] || ng "$LINENO"

out=$(echo あ | ./year_conv 2> /tmp/err)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"
grep -q "計算不可" /tmp/err || ng "$LINENO"

[ "$res" = 0 ] && echo OK
rm -f /tmp/err
exit $res
