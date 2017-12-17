FROM desiato/archlinux

RUN pacman --noconfirm -Syu && \
    pacman --noconfirm -S systemd gitolite sudo && \
    echo -e 'y\ny' | pacman -Scc && \
    rm -r /usr/share/man/* && \
    ls -d /usr/share/locale/* | egrep -v 'alias|en_US' | xargs rm -rf

EXPOSE 2222
VOLUME /var/lib/gitolite
COPY start /usr/local/bin

CMD start
