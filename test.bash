#!/usr/bin/bash[ "${out}" =  15 ] || ng "$LINENO"
# SPDX-FileCopyrightText: 2025 Kanta Hirazawa
# SPDX-License-Identifier: BSD-3-Clause

out=$(echo 2025 | ./year_conv)
[ "${out}" = "令和7年" ] || exit 1

out=$(echo R7 | ./year_conv)
[ "${out}" = "2025" ] || exit 1

out=$(echo 昭和64 | ./year_conv)
[ "${out}" = "1989" ] || exit 1

echo "OK"
exit 0
