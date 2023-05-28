# asm toots

just working through to learn a bit of basic asm.  not following specific tutorial, but whatever i can google for whatever i want to do.

# notes

to compile and run single files:
```bash
# compile
nasm -f elf64 build/file.asm -o build/file.o

# link
ld build/file.o -o build/file

# run
./build/file
```

