@echo off
set xv_path=E:\\Vivado\\Vivado\\2017.1\\bin
call %xv_path%/xsim cpu_tb_time_impl -key {Post-Implementation:sim_1:Timing:cpu_tb} -tclbatch cpu_tb.tcl -view D:/verilog/myproject/myproject/cpu_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
