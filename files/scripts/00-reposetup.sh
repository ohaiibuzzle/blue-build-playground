#!/usr/bin/bash

set -eoux pipefail

# Add Staging repo
curl --retry 3 -Lo /etc/yum.repos.d/ublue-os-staging-fedora-"$(rpm -E %fedora)".repo \
    https://copr.fedorainfracloud.org/coprs/ublue-os/staging/repo/fedora-"$(rpm -E %fedora)"/ublue-os-staging-fedora-"$(rpm -E %fedora)".repo

# Add Switcheroo Repo
curl --retry 3 -Lo /etc/yum.repos.d/_copr_sentry-switcheroo-control_discrete.repo \
    https://copr.fedorainfracloud.org/coprs/sentry/switcheroo-control_discrete/repo/fedora-"$(rpm -E %fedora)"/sentry-switcheroo-control_discrete-fedora-"$(rpm -E %fedora)".repo

# Add Nerd Fonts Repo
curl --retry 3 -Lo /etc/yum.repos.d/_copr_che-nerd-fonts-"$(rpm -E %fedora)".repo https://copr.fedorainfracloud.org/coprs/che/nerd-fonts/repo/fedora-"$(rpm -E %fedora)"/che-nerd-fonts-fedora-"$(rpm -E %fedora)".repo

# AKMODS Repo
curl --retry 3 -Lo /etc/yum.repos.d/_copr_ublue-os-akmods.repo https://copr.fedorainfracloud.org/coprs/ublue-os/akmods/repo/fedora-"$(rpm -E %fedora)"/ublue-os-akmods-fedora-"$(rpm -E %fedora)".repo

# Podman-bootc
curl --retry 3 -Lo /etc/yum.repos.d/gmaglione-podman-bootc-fedora-"$(rpm -E %fedora)".repo \
    https://copr.fedorainfracloud.org/coprs/gmaglione/podman-bootc/repo/fedora-"$(rpm -E %fedora)"/gmaglione-podman-bootc-fedora-"$(rpm -E %fedora)".repo

# RPMFusion
dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-"$(rpm -E %fedora)".noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-"$(rpm -E %fedora)".noarch.rpm