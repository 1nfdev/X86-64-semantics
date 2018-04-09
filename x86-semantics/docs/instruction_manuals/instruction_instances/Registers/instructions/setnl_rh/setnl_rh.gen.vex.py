import angr
proj = angr.Project('./instructions/setnl_rh/setnl_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()