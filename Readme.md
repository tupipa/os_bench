The workable toy example is at

cheritypes/sandbox_hello/

To run

```
# git clone and cd to it
cd cheritypes/sandbox_hello/

make
```

It will default to compile the code in CHERI 128 Hybrid ABI, generating the .asm file, disassemble file, and send it over ssh to the cheribsd (if exist).

Other options are also available.

### Environment setup
**Important:** The Makefile might need to change to reflect the actual clang and objdump binary path; if you wish to send the generated binary over ssh to a running CheriBSD instance, you also need to change the target address and port as well.
