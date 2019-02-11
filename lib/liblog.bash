#!/bin/bash
#
# Logging Library

# Color palette
declare -r RESET='\033[0m'
declare -r GREEN='\033[38;5;2m'
declare -r RED='\033[38;5;1m'
declare -r YELLOW='\033[38;5;3m'

# Functions

########################
# Log message to stderr
# Arguments:
#   $1 - Message to log
#########################
log() {
    printf "%b\n" "${*}" >&2
}

########################
# Log info message
# Arguments:
#   $1 - Message to log
#########################
info() {
    log "${GREEN}INFO ${RESET} ==> ${*}"
}

########################
# Log warning message
# Arguments:
#   $1 - Message to log
#########################
warn() {
    log "${YELLOW}WARN ${RESET} ==> ${*}"
}

########################
# Log error message
# Arguments:
#   $1 - Message to log
#########################
error() {
    log "${RED}ERROR ${RESET} ==> ${*}"
}
