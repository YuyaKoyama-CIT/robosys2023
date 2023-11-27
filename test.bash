#!/bin/bash
# SPDX-FileCopyrightText: 2023 Yuya Kyama
# SPDX-License-Identifier: BSD-3-Clause

ng(){
        echo NG at Line $1
        res=1
}

res=0

### I/O TEST###

#plus
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}


#minus
out=$(seq 5 | ./minus)
[ "${out}" = -15 ] || ng ${LINENO}

### STRANGE INPUT ###

#plus
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
    　 
out=$(echo | ./plus) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


#minus
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
    　 
out=$(echo | ./plus) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


#mul
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
    　 
out=$(echo | ./plus) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK         # &&(AND記号) は左側が成功すると右側を実行
exit $res
