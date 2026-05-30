run -all
# gen reset_n =1
# ===========================================================================
#                       VERIFICATION MOD n COUNTER IN SV                        
# ===========================================================================
# monitor  Time=1 |reset_n =0| count =0
# interface  Time=1 |reset_n =0| count =x
# reset_n=0
# actual output, count=0
# expected output,count=0
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=5 |reset_n =1
# gen reset_n =1
# monitor  Time=11 |reset_n =1| count =0
# interface  Time=11 |reset_n =1| count =0
# reset_n=1
# actual output, count=0
# expected output,count=0
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=15 |reset_n =1
# gen reset_n =1
# monitor  Time=21 |reset_n =1| count =1
# interface  Time=21 |reset_n =1| count =1
# reset_n=1
# actual output, count=1
# expected output,count=1
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=25 |reset_n =1
# gen reset_n =1
# monitor  Time=31 |reset_n =1| count =2
# interface  Time=31 |reset_n =1| count =2
# reset_n=1
# actual output, count=2
# expected output,count=2
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=35 |reset_n =1
# gen reset_n =1
# monitor  Time=41 |reset_n =1| count =3
# interface  Time=41 |reset_n =1| count =3
# reset_n=1
# actual output, count=3
# expected output,count=3
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=45 |reset_n =1
# gen reset_n =1
# monitor  Time=51 |reset_n =1| count =4
# interface  Time=51 |reset_n =1| count =4
# reset_n=1
# actual output, count=4
# expected output,count=4
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=55 |reset_n =1
# gen reset_n =1
# monitor  Time=61 |reset_n =1| count =5
# interface  Time=61 |reset_n =1| count =5
# reset_n=1
# actual output, count=5
# expected output,count=5
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=65 |reset_n =1
# gen reset_n =1
# monitor  Time=71 |reset_n =1| count =6
# interface  Time=71 |reset_n =1| count =6
# reset_n=1
# actual output, count=6
# expected output,count=6
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=75 |reset_n =1
# gen reset_n =1
# monitor  Time=81 |reset_n =1| count =7
# interface  Time=81 |reset_n =1| count =7
# reset_n=1
# actual output, count=7
# expected output,count=7
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=85 |reset_n =1
# gen reset_n =1
# monitor  Time=91 |reset_n =1| count =8
# interface  Time=91 |reset_n =1| count =8
# reset_n=1
# actual output, count=8
# expected output,count=8
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=95 |reset_n =1
# gen reset_n =1
# monitor  Time=101 |reset_n =1| count =9
# interface  Time=101 |reset_n =1| count =9
# reset_n=1
# actual output, count=9
# expected output,count=9
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=105 |reset_n =1
# gen reset_n =1
# monitor  Time=111 |reset_n =1| count =0
# interface  Time=111 |reset_n =1| count =0
# reset_n=1
# actual output, count=0
# expected output,count=0
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=115 |reset_n =1
# gen reset_n =1
# monitor  Time=121 |reset_n =1| count =1
# interface  Time=121 |reset_n =1| count =1
# reset_n=1
# actual output, count=1
# expected output,count=1
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=125 |reset_n =1
# gen reset_n =1
# monitor  Time=131 |reset_n =1| count =2
# interface  Time=131 |reset_n =1| count =2
# reset_n=1
# actual output, count=2
# expected output,count=2
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=135 |reset_n =1
# gen reset_n =1
# monitor  Time=141 |reset_n =1| count =3
# interface  Time=141 |reset_n =1| count =3
# reset_n=1
# actual output, count=3
# expected output,count=3
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=145 |reset_n =1
# gen reset_n =1
# monitor  Time=151 |reset_n =1| count =4
# interface  Time=151 |reset_n =1| count =4
# reset_n=1
# actual output, count=4
# expected output,count=4
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=155 |reset_n =1
# gen reset_n =1
# monitor  Time=161 |reset_n =1| count =5
# interface  Time=161 |reset_n =1| count =5
# reset_n=1
# actual output, count=5
# expected output,count=5
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=165 |reset_n =1
# gen reset_n =0
# monitor  Time=171 |reset_n =1| count =6
# interface  Time=171 |reset_n =1| count =6
# reset_n=1
# actual output, count=6
# expected output,count=6
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=175 |reset_n =0
# gen reset_n =1
# monitor  Time=181 |reset_n =0| count =7
# interface  Time=181 |reset_n =0| count =7
# reset_n=0
# actual output, count=7
# expected output,count=7
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=185 |reset_n =1
# gen reset_n =1
# monitor  Time=191 |reset_n =1| count =0
# interface  Time=191 |reset_n =1| count =0
# reset_n=1
# actual output, count=0
# expected output,count=0
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=195 |reset_n =1
# gen reset_n =1
# monitor  Time=201 |reset_n =1| count =1
# interface  Time=201 |reset_n =1| count =1
# reset_n=1
# actual output, count=1
# expected output,count=1
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=205 |reset_n =1
# gen reset_n =1
# monitor  Time=211 |reset_n =1| count =2
# interface  Time=211 |reset_n =1| count =2
# reset_n=1
# actual output, count=2
# expected output,count=2
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=215 |reset_n =1
# gen reset_n =1
# monitor  Time=221 |reset_n =1| count =3
# interface  Time=221 |reset_n =1| count =3
# reset_n=1
# actual output, count=3
# expected output,count=3
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=225 |reset_n =1
# gen reset_n =1
# monitor  Time=231 |reset_n =1| count =4
# interface  Time=231 |reset_n =1| count =4
# reset_n=1
# actual output, count=4
# expected output,count=4
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=235 |reset_n =1
# gen reset_n =1
# monitor  Time=241 |reset_n =1| count =5
# interface  Time=241 |reset_n =1| count =5
# reset_n=1
# actual output, count=5
# expected output,count=5
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=245 |reset_n =1
# gen reset_n =1
# monitor  Time=251 |reset_n =1| count =6
# interface  Time=251 |reset_n =1| count =6
# reset_n=1
# actual output, count=6
# expected output,count=6
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=255 |reset_n =1
# gen reset_n =1
# monitor  Time=261 |reset_n =1| count =7
# interface  Time=261 |reset_n =1| count =7
# reset_n=1
# actual output, count=7
# expected output,count=7
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=265 |reset_n =1
# gen reset_n =1
# monitor  Time=271 |reset_n =1| count =8
# interface  Time=271 |reset_n =1| count =8
# reset_n=1
# actual output, count=8
# expected output,count=8
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=275 |reset_n =1
# gen reset_n =1
# monitor  Time=281 |reset_n =1| count =9
# interface  Time=281 |reset_n =1| count =9
# reset_n=1
# actual output, count=9
# expected output,count=9
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=285 |reset_n =1
# gen reset_n =1
# monitor  Time=291 |reset_n =1| count =0
# interface  Time=291 |reset_n =1| count =0
# reset_n=1
# actual output, count=0
# expected output,count=0
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=295 |reset_n =1
# gen reset_n =1
# monitor  Time=301 |reset_n =1| count =1
# interface  Time=301 |reset_n =1| count =1
# reset_n=1
# actual output, count=1
# expected output,count=1
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=305 |reset_n =1
# gen reset_n =1
# monitor  Time=311 |reset_n =1| count =2
# interface  Time=311 |reset_n =1| count =2
# reset_n=1
# actual output, count=2
# expected output,count=2
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=315 |reset_n =1
# gen reset_n =1
# monitor  Time=321 |reset_n =1| count =3
# interface  Time=321 |reset_n =1| count =3
# reset_n=1
# actual output, count=3
# expected output,count=3
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=325 |reset_n =1
# gen reset_n =1
# monitor  Time=331 |reset_n =1| count =4
# interface  Time=331 |reset_n =1| count =4
# reset_n=1
# actual output, count=4
# expected output,count=4
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=335 |reset_n =1
# gen reset_n =1
# monitor  Time=341 |reset_n =1| count =5
# interface  Time=341 |reset_n =1| count =5
# reset_n=1
# actual output, count=5
# expected output,count=5
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=345 |reset_n =1
# gen reset_n =1
# monitor  Time=351 |reset_n =1| count =6
# interface  Time=351 |reset_n =1| count =6
# reset_n=1
# actual output, count=6
# expected output,count=6
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=355 |reset_n =1
# gen reset_n =1
# monitor  Time=361 |reset_n =1| count =7
# interface  Time=361 |reset_n =1| count =7
# reset_n=1
# actual output, count=7
# expected output,count=7
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=365 |reset_n =1
# gen reset_n =1
# monitor  Time=371 |reset_n =1| count =8
# interface  Time=371 |reset_n =1| count =8
# reset_n=1
# actual output, count=8
# expected output,count=8
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=375 |reset_n =1
# gen reset_n =1
# monitor  Time=381 |reset_n =1| count =9
# interface  Time=381 |reset_n =1| count =9
# reset_n=1
# actual output, count=9
# expected output,count=9
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=385 |reset_n =1
# gen reset_n =1
# monitor  Time=391 |reset_n =1| count =0
# interface  Time=391 |reset_n =1| count =0
# reset_n=1
# actual output, count=0
# expected output,count=0
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=395 |reset_n =1
# gen reset_n =1
# monitor  Time=401 |reset_n =1| count =1
# interface  Time=401 |reset_n =1| count =1
# reset_n=1
# actual output, count=1
# expected output,count=1
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=405 |reset_n =1
# gen reset_n =1
# monitor  Time=411 |reset_n =1| count =2
# interface  Time=411 |reset_n =1| count =2
# reset_n=1
# actual output, count=2
# expected output,count=2
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=415 |reset_n =1
# gen reset_n =1
# monitor  Time=421 |reset_n =1| count =3
# interface  Time=421 |reset_n =1| count =3
# reset_n=1
# actual output, count=3
# expected output,count=3
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=425 |reset_n =1
# gen reset_n =1
# monitor  Time=431 |reset_n =1| count =4
# interface  Time=431 |reset_n =1| count =4
# reset_n=1
# actual output, count=4
# expected output,count=4
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=435 |reset_n =1
# gen reset_n =1
# monitor  Time=441 |reset_n =1| count =5
# interface  Time=441 |reset_n =1| count =5
# reset_n=1
# actual output, count=5
# expected output,count=5
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=445 |reset_n =1
# gen reset_n =0
# monitor  Time=451 |reset_n =1| count =6
# interface  Time=451 |reset_n =1| count =6
# reset_n=1
# actual output, count=6
# expected output,count=6
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=455 |reset_n =0
# gen reset_n =0
# monitor  Time=461 |reset_n =0| count =7
# interface  Time=461 |reset_n =0| count =7
# reset_n=0
# actual output, count=7
# expected output,count=7
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=465 |reset_n =0
# gen reset_n =1
# monitor  Time=471 |reset_n =0| count =0
# interface  Time=471 |reset_n =0| count =0
# reset_n=0
# actual output, count=0
# expected output,count=0
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=475 |reset_n =1
# gen reset_n =1
# monitor  Time=481 |reset_n =1| count =0
# interface  Time=481 |reset_n =1| count =0
# reset_n=1
# actual output, count=0
# expected output,count=0
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=485 |reset_n =1
# gen reset_n =1
# monitor  Time=491 |reset_n =1| count =1
# interface  Time=491 |reset_n =1| count =1
# reset_n=1
# actual output, count=1
# expected output,count=1
# +--------+
# |  PASS  |
# +--------+
# =====================================================
# driver    Time=495 |reset_n =1
# gen reset_n =1
# monitor  Time=501 |reset_n =1| count =2
# interface  Time=501 |reset_n =1| count =2
# driver    Time=505 |reset_n =1
# gen reset_n =1
# monitor  Time=511 |reset_n =1| count =3
# interface  Time=511 |reset_n =1| count =3
# driver    Time=515 |reset_n =1
# gen reset_n =1
# monitor  Time=521 |reset_n =1| count =4
# interface  Time=521 |reset_n =1| count =4
# driver    Time=525 |reset_n =1
# gen reset_n =1
# monitor  Time=531 |reset_n =1| count =5
# interface  Time=531 |reset_n =1| count =5
# driver    Time=535 |reset_n =1
# gen reset_n =1
# monitor  Time=541 |reset_n =1| count =6
# interface  Time=541 |reset_n =1| count =6
# driver    Time=545 |reset_n =1
# gen reset_n =1
# monitor  Time=551 |reset_n =1| count =7
# interface  Time=551 |reset_n =1| count =7
# driver    Time=555 |reset_n =1
# gen reset_n =1
# monitor  Time=561 |reset_n =1| count =8
# interface  Time=561 |reset_n =1| count =8
# driver    Time=565 |reset_n =1
# gen reset_n =1
# monitor  Time=571 |reset_n =1| count =9
# interface  Time=571 |reset_n =1| count =9
# driver    Time=575 |reset_n =1
# gen reset_n =1
# monitor  Time=581 |reset_n =1| count =0
# interface  Time=581 |reset_n =1| count =0
# driver    Time=585 |reset_n =1
# gen reset_n =1
# monitor  Time=591 |reset_n =1| count =1
# interface  Time=591 |reset_n =1| count =1
# driver    Time=595 |reset_n =1
# gen reset_n =1
# monitor  Time=601 |reset_n =1| count =2
# interface  Time=601 |reset_n =1| count =2
# driver    Time=605 |reset_n =1
# gen reset_n =1
# monitor  Time=611 |reset_n =1| count =3
# interface  Time=611 |reset_n =1| count =3
# driver    Time=615 |reset_n =1
# gen reset_n =1
# monitor  Time=621 |reset_n =1| count =4
# interface  Time=621 |reset_n =1| count =4
# driver    Time=625 |reset_n =1
# gen reset_n =1
# monitor  Time=631 |reset_n =1| count =5
# interface  Time=631 |reset_n =1| count =5
# driver    Time=635 |reset_n =1
# gen reset_n =1
# monitor  Time=641 |reset_n =1| count =6
# interface  Time=641 |reset_n =1| count =6
# driver    Time=645 |reset_n =1
# gen reset_n =1
# monitor  Time=651 |reset_n =1| count =7
# interface  Time=651 |reset_n =1| count =7
# driver    Time=655 |reset_n =1
# gen reset_n =1
# monitor  Time=661 |reset_n =1| count =8
# interface  Time=661 |reset_n =1| count =8
# driver    Time=665 |reset_n =1
# gen reset_n =1
# monitor  Time=671 |reset_n =1| count =9
# interface  Time=671 |reset_n =1| count =9
# driver    Time=675 |reset_n =1
# gen reset_n =1
# monitor  Time=681 |reset_n =1| count =0
# interface  Time=681 |reset_n =1| count =0
# driver    Time=685 |reset_n =1
# gen reset_n =1
# monitor  Time=691 |reset_n =1| count =1
# interface  Time=691 |reset_n =1| count =1
# driver    Time=695 |reset_n =1
# ===========================================================================
# PASS PERCENTAGE =100.000000
# FAIL PERCENTAGE = 0.000000
# TOTAL NUMBER OF TEST CASES=50
# NUMBER OF PASS=50
# NUMBER OF FAIL=0
# ===========================================================================
# ** Note: $finish    : environment.sv(76)
#    Time: 696 ns  Iteration: 0  Instance: /tb
