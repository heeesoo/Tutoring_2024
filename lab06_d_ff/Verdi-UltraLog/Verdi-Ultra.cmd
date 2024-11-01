debImport "-sv" "-f" "run.f"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "490" "174" "900" "700"
verdiWindowResize -win $_Verdi_1 "490" "174" "900" "700"
srcHBSelect "tb_d_ff.u_d_ff" -win $_nTrace1
srcSetScope "tb_d_ff.u_d_ff" -delim "." -win $_nTrace1
srcHBSelect "tb_d_ff.u_d_ff" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
schCreateWindow -delim "." -win $_nSchema1 -scope "tb_d_ff.u_d_ff"
wvCreateWindow
verdiSetActWin -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 {/home2/s1_student7/2024_tutoring/lab02_d_ff/wave.fsdb}
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/tb_d_ff"
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/tb_d_ff/clk} \
{/tb_d_ff/n_rst} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/tb_d_ff/clk} \
{/tb_d_ff/n_rst} \
{/tb_d_ff/d_in} \
{/tb_d_ff/d_out} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/tb_d_ff/clk} \
{/tb_d_ff/n_rst} \
{/tb_d_ff/d_in} \
{/tb_d_ff/d_out} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave3 {("G1" 4)}
wvGetSignalClose -win $_nWave3
wvSetCursor -win $_nWave3 5003.528915 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 48057.070494 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvDeselectAll -win $_nWave3
wvSetCursor -win $_nWave3 29093.457155 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 23431.658928 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvSetCursor -win $_nWave3 23431.658928 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 23592.815534 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 23900.547911 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
schSelect -win $_nSchema2 -inst "d_ff:Always0:8:16:Reg"
schPushViewIn -win $_nSchema2
srcSelect -win $_nTrace1 -range {8 16 1 2 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
verdiSetActWin -win $_nSchema_2
schDeselectAll -win $_nSchema2
wvZoom -win $_nWave3 18429.750106 22225.116083
verdiSetActWin -win $_nWave3
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 22635.425918 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 20105.181933 -snap {("G1" 3)}
wvZoom -win $_nWave3 19147.792317 21370.303926
wvSetCursor -win $_nWave3 20002.460141 -snap {("G1" 1)}
wvSetCursor -win $_nWave3 20208.856323 -snap {("G1" 2)}
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 39082.011819 45099.889405
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 49066.217813 52211.926551
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 49134.602786 52417.081469
wvZoomAll -win $_nWave3
verdiSetActWin -win $_nSchema_2
debExit
