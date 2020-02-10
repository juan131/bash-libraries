#!/bin/bash
#
# Logging Library

# Color palette
RESET='\033[0m'
GREEN='\033[38;5;2m'
RED='\033[38;5;1m'
YELLOW='\033[38;5;3m'

# Functions

########################
# Log message to stderr
# Arguments:
#   $1 - Message to log
#########################
log() {
    printf "%b\\n" "${*}" >&2
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
