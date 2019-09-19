#!/bin/bash
source ~/.bashrc
ASDF_BIN=~/.asdf/bin/asdf
$ASDF_BIN plugin-add erlang
$ASDF_BIN plugin-add elixir
$ASDF_BIN install erlang 22.0.7
$ASDF_BIN install elixir 1.9.1-otp-22
$ASDF_BIN global erlang 22.0.7
$ASDF_BIN global elixir 1.9.1-otp-22