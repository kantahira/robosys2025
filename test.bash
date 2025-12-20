#!/bin/bash
# SPDX-FileCopyrightText: 2025 Kanta Hirazawa
# SPDX-License-Identifier: BSD-3-Clause

set -e
set -x

out=$(echo 2025 | ./year_conv)
if [ "${out}" = "令和7年" ]; then
    echo "Test 1 OK"
else
    echo "Test 1 Failed: ${out}"
    exit 1
fi

out=$(echo s64 | ./year_conv)
if [ "${out}" = "1989" ]; then
    echo "Test 2 OK"
else
    echo "Test 2 Failed: ${out}"
    exit 1
fi

echo "test" | ./year_conv 2> err.log || true

if grep -q "計算不可" err.log; then
    echo "Test 3 OK"
else
    echo "Test 3 Failed"
    exit 1
fi

rm -f err.log
exit 0
