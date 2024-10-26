# No autoloading so that gdb does not pick up the default printers for libstdcxx.
# They match libcxx, but don't work on it.
set auto-load no
set debug auto-load on

# To set up: 
# > git clone https://github.com/llvm/llvm-project.git
# > cd llvm-project
# > git checkout llvmorg-14.0.6
source ~/repositories/llvm-project/libcxx/utils/gdb/libcxx/printers.py
python register_libcxx_printer_loader()
set print elements 0

set history save
set verbose off
set print pretty on
set print array off
set print array-indexes on
set python print-stack full

set history size 10000
set history remove-duplicates 100
set history filename ~/.gdb_history
