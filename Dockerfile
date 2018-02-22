FROM fedora:27
RUN dnf -y update --refresh && \
    dnf -y install 'dnf-command(copr)' && \
    dnf -y copr enable petersen/pandoc && \
    dnf -y install pandoc pandoc-citeproc graphviz && \
    /usr/bin/pip3 install -U pip actdiag blockdiag seqdiag nwdiag
# RUN dnf -y install texlive-scheme-full
