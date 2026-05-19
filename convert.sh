#!/bin/bash
if [ ! -e platform.toml ]; then
  ~/meson/meson.py check-platforms -o platform.toml
fi
~/meson/meson.py convert --config qemu.toml --platform platform.toml --dependencies dependencies.toml
