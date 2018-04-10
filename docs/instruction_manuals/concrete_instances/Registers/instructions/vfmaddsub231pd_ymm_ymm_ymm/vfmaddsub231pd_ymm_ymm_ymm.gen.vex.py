import angr
proj = angr.Project('./instructions/vfmaddsub231pd_ymm_ymm_ymm/vfmaddsub231pd_ymm_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()