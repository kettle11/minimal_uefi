cargo xbuild
mkdir -p "./target/x86_64-unknown-uefi/debug/output/EFI/BOOT"
cp "./target/x86_64-unknown-uefi/debug/minimal_uefi.efi" "./target/x86_64-unknown-uefi/debug/output/EFI/BOOT/BOOTX64.EFI"
qemu-system-x86_64 \
    -nodefaults \
    -machine q35 \
     -m 128M \
    -drive if=pflash,format=raw,file=OVMF_CODE-pure-efi.fd,readonly=on \
    -drive if=pflash,format=raw,file=OVMF_VARS-pure-efi.fd,readonly=on \
    -drive format=raw,file=fat:rw:./target/x86_64-unknown-uefi/debug/output \
    -serial stdio \
    -device isa-debug-exit,iobase=0xf4,iosize=0x04
