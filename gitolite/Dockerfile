FROM finalduty/archlinux

RUN pacman --noconfirm -Syu && \
pacman --noconfirm -S openssh gitolite && \
echo -e 'y\ny' | pacman -Scc && \
rm -r /usr/share/man/* && \
ls -d /usr/share/locale/* | egrep -v "alias|en_US" | xargs rm -rf

EXPOSE 2222
VOLUME /var/lib/gitolite
COPY start /usr/local/bin
USER gitolite

CMD start
