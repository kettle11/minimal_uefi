#![no_std]
#![no_main]
#![feature(abi_efiapi)]

use uefi::prelude::*;

#[entry]
fn efi_main(_image: Handle, _st: SystemTable<Boot>) -> Status {
    loop {}
}

use core::panic::PanicInfo;

/// This function is called on panic.
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
