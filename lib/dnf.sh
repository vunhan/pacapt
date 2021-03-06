#!/bin/bash

# Purpose: Support next-generation Yum package manager
# Author : Severus <severus@theslinux.org>
# License: Fair license (http://www.opensource.org/licenses/fair)
# Source : http://github.com/icy/pacapt/

# Copyright (C) 2015 Severus
#
# Usage of the works is permitted provided that this instrument is
# retained with the works, so that any entity that uses the works is
# notified of this instrument.
#
# DISCLAIMER: THE WORKS ARE WITHOUT WARRANTY.

_dnf_init() {
  :
}

dnf_S() {
  dnf install $_TOPT "$@"
}

dnf_Suy() {
  dnf upgrade "$@"
}

dnf_Sw() {
  dnf download "$@"
}

dnf_Si() {
  dnf info "$@"
}

dnf_Sl() {
  dnf list available "$@"
}

dnf_Ss() {
  dnf search "$@"
}

dnf_Sc() {
  dnf clean expire-cache "$@"
}

dnf_Scc() {
  dnf clean packages "$@"
}

dnf_Sccc() {
  dnf clean all "$@"
}

dnf_Su() {
  dnf upgrade "$@"
}

dnf_Sy() {
  dnf clean expire-cache && dnf check-update
}

dnf_Q() {
  if [[ "$_TOPT" == "q" ]]; then
    rpm -qa --qf "%{NAME}\n"
  elif [[ "$_TOPT" == "" ]]; then
    rpm -qa --qf "%{NAME} %{VERSION}\n"
  else
    _not_implemented
  fi
}

dnf_Qi() {
  dnf info "$@"
}

dnf_Qu() {
  dnf list updates "$@"
}

dnf_Qs() {
  rpm -qa "*$@*"
}

dnf_Ql() {
  rpm -ql "$@"
}

dnf_Qo() {
  rpm -qf "$@"
}

dnf_Qp() {
  rpm -qp "$@"
}

dnf_Qc() {
  rpm -q --changelog "$@"
}

dnf_Qm() {
  dnf list extras
}

dnf_R() {
  dnf remove "$@"
}

dnf_U() {
  dnf install "$@"
}
