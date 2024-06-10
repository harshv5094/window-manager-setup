#!/usr/bin/env bash

source ~/.dotfiles/.scripts/modules/colors.sh

function delete_folder_check() {
	text=$1
	if [ $? -eq 0 ]; then
		echo_success "Successfully Deleted $text Config Folder"
	else
		echo_error "Failed to Delete $text Config Folder"
	fi
}

function link_folder_check() {
	text=$1
	if [ $? -eq 0 ]; then
		echo_success "Successfully Linked $text Config Folder"
	else
		echo_error "Failed to Link $text Config Folder"
	fi
}

function link_file_check() {
	text=$1
	if [ $? -eq 0 ]; then
		echo_success "Successfully Linked $text"
	else
		echo_error "Failed to Link $text"
	fi
}

function delete_file_check() {
	text=$1
	if [ $? -eq 0 ]; then
		echo_success "Deleted $text"
	else
		echo_error "Failed to Delete $text"
	fi
}

function copy_file_check() {
	text=$1
	if [ $? -eq 0 ]; then
		echo_success "Copied $text"
	else
		echo_error "Failed to Copy $text"
	fi
}
