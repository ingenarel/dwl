{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [
    libinput
    wayland
    wlroots
    libxkbcommon
    wayland-protocols
    wayland-scanner
    pkg-config
    pixman
  ];
  shellHook = ''
    export NIX_CC=clang
    export NIX_ENFORCE_NO_NATIVE=0
    export NIX_ENFORCE_PURITY=0
  '';
}
