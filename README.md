Dabbling in writing kernels (with UEFI) is fun, configuring things is not!

This repository is a minimal set of things required to boot a Rust UEFI application in an emulator.

Things you must install (assuming you have Rust already installed):

* Qemu: https://www.qemu.org/download/
* Cargo xbuild: `cargo install cargo-xbuild`
* Nightly Rust `rustup install toolchain nightly` 

Run with `./build.sh` from the main directory.

---

The OVMF files were downloaded and extracted from here:
https://www.kraxel.org/repos/jenkins/edk2/
for the file edk2.git-aarch64...noarch.rpm

---

Qemu is an emulator: https://www.qemu.org/

OVMF contains firmware needed for Qemu emulate UEFI.
It is part of the EDK II project: https://github.com/tianocore/edk2
