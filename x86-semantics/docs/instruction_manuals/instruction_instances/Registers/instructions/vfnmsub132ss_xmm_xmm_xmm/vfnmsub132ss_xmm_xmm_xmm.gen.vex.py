import angr
proj = angr.Project('./instructions/vfnmsub132ss_xmm_xmm_xmm/vfnmsub132ss_xmm_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()