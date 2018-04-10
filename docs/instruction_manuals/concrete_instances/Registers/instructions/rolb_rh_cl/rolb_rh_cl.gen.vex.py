import angr
proj = angr.Project('./instructions/rolb_rh_cl/rolb_rh_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()