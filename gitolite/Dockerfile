FROM finalduty/archlinux

RUN pacman --noconfirm -Syu && \
pacman --noconfirm -S openssh gitolite && \
echo -e 'y\ny' | pacman -Scc

EXPOSE 2222
VOLUME /var/lib/gitolite
COPY start /usr/local/bin
USER gitolite

CMD start
