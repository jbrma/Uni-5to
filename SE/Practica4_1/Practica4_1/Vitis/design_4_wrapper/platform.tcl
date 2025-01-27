# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\usuario_local\Downloads\Practica4_1\Vitis\design_4_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\usuario_local\Downloads\Practica4_1\Vitis\design_4_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_4_wrapper}\
-hw {C:\Users\usuario_local\Downloads\Practica4_1\project_4\design_4_wrapper.xsa}\
-out {C:/Users/usuario_local/Downloads/Practica4_1/Vitis}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {peripheral_tests}
platform generate -domains 
platform active {design_4_wrapper}
platform generate -quick
platform generate
