import angr
proj = angr.Project('./instructions/vcvttsd2siq_r64_xmm/vcvttsd2siq_r64_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()