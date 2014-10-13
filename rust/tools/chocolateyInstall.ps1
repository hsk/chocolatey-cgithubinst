if (Get-ProcessorBits 64) {
    Install-ChocolateyPackage 'rust' 'exe' '/VERYSILENT' 'https://static.rust-lang.org/dist/rust-0.12.0-x86_64-w64-mingw32.exe'
} else {
    Install-ChocolateyPackage 'rust' 'exe' '/VERYSILENT' 'https://static.rust-lang.org/dist/rust-0.12.0-i686-w64-mingw32.exe'
}
