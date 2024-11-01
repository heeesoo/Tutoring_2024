verdiSetActWin -dock widgetDock_<Message>
debImport "-sv" "-f" "run.f"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "tb_hw_assign.u_hw_assign" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_hw_assign.u_hw_assign" -win $_nTrace1
wvCreateWindow
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
schCreateWindow -delim "." -win $_nSchema1 -scope "tb_hw_assign"
verdiSetActWin -win $_nSchema_3
wvCreateWindow
schSelect -win $_nSchema3 -inst "u_hw_assign"
schPushViewIn -win $_nSchema3
verdiSetActWin -win $_nWave4
wvSetPosition -win $_nWave4 {("G1" 0)}
wvOpenFile -win $_nWave4 \
           {/home2/s1_student7/2024_tutoring/lab01_week06_report/wave.fsdb}
wvGetSignalOpen -win $_nWave4
wvGetSignalSetScope -win $_nWave4 "/tb_hw_assign"
wvSetPosition -win $_nWave4 {("G1" 3)}
wvSetPosition -win $_nWave4 {("G1" 3)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/tb_hw_assign/din0\[2:0\]} \
{/tb_hw_assign/din1\[2:0\]} \
{/tb_hw_assign/sel\[1:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 1 2 3 )} 
wvSetPosition -win $_nWave4 {("G1" 3)}
wvSetPosition -win $_nWave4 {("G1" 4)}
wvSetPosition -win $_nWave4 {("G1" 4)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/tb_hw_assign/din0\[2:0\]} \
{/tb_hw_assign/din1\[2:0\]} \
{/tb_hw_assign/sel\[1:0\]} \
{/tb_hw_assign/dout\[2:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 4 )} 
wvSetPosition -win $_nWave4 {("G1" 4)}
wvSetPosition -win $_nWave4 {("G1" 4)}
wvSetPosition -win $_nWave4 {("G1" 4)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/tb_hw_assign/din0\[2:0\]} \
{/tb_hw_assign/din1\[2:0\]} \
{/tb_hw_assign/sel\[1:0\]} \
{/tb_hw_assign/dout\[2:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 4 )} 
wvSetPosition -win $_nWave4 {("G1" 4)}
wvGetSignalClose -win $_nWave4
wvSetCursor -win $_nWave4 968.644998 -snap {("G1" 1)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 28786.492191 -snap {("G1" 4)}
wvSetCursor -win $_nWave4 56583.875053 -snap {("G1" 3)}
wvSelectSignal -win $_nWave4 {( "G1" 1 )} 
wvSelectAll -win $_nWave4
wvSelectSignal -win $_nWave4 {( "G1" 1 2 3 4 )} 
wvSetRadix -win $_nWave4 -format Bin
wvSetCursor -win $_nWave4 35880.793584 -snap {("G2" 0)}
wvSetCursor -win $_nWave4 34073.111017 -snap {("G1" 3)}
wvSetCursor -win $_nWave4 36392.401857 -snap {("G2" 0)}
wvSetCursor -win $_nWave4 39837.230899 -snap {("G2" 0)}
wvSetCursor -win $_nWave4 77628.028704 -snap {("G1" 4)}
wvSetCursor -win $_nWave4 78889.995779 -snap {("G1" 4)}
wvSetCursor -win $_nWave4 10777.880962 -snap {("G1" 1)}
wvSetCursor -win $_nWave4 10095.736598 -snap {("G1" 2)}
verdiWindowResize -win $_Verdi_1 "92" "221" "1920" "1022"
debExit
