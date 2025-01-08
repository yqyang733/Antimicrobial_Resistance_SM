# pbc 处理
mkdir analysis
cd analysis
mkdir pbc
cd pbc
gmx trjconv -f ../../prod/step6.6_equilibration.gro -s ../../prod/step7_1.tpr -o equil.pdb -n ../../index.ndx  # output:SOLU_MEMB
gmx trjconv -f ../../prod/step7_1.xtc -s ../../prod/step7_1.tpr -o prod_pbc.xtc -pbc mol -ur compact -center -n ../../index.ndx   # center:SOLU_MEMB   output:SOLU_MEMB

# distance 计算
gmx distance -s ../pbc/equil.pdb -f ../pbc/prod_pbc.xtc -select "com of group SOLU plus com of group MEMB" -oav -oall -n ../../index.ndx   # 计算index中溶质组SOLU和膜组MEMB质心之间的距离