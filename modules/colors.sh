#!/usr/bin/env bash

function echo_title() { echo -ne "\033[1;44;37m${*}\033[0m\n"; }
function echo_caption() { echo -ne "\033[0;1;44m${*}\033[0m\n"; }
function echo_bold() { echo -ne "\033[0;1;34m${*}\033[0m\n"; }
function echo_danger() { echo -ne "\033[0;31m${*}\033[0m\n"; }
function echo_success() { echo -ne "\033[0;32m${*}\033[0m\n"; }
function echo_warning() { echo -ne "\033[0;33m${*}\033[0m\n"; }
function echo_secondary() { echo -ne "\033[0;34m${*}\033[0m\n"; }
function echo_info() { echo -ne "\033[0;35m${*}\033[0m\n"; }
function echo_primary() { echo -ne "\033[0;36m${*}\033[0m\n"; }
function echo_error() { echo -ne "\033[0;1;31merror:\033[0;31m\t${*}\033[0m\n"; }
function echo_label() { echo -ne "\033[0;1;32m${*}:\033[0m\t"; }
function echo_prompt() { echo -ne "\033[0;36m${*}\033[0m "; }
