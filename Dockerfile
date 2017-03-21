FROM ubuntu
MAINTAINER JeongHoon Baek <coalash@gmail.com>

WORKDIR /root
ENV DEBIAN_FRONTEND noninteractive

# # RUN sed -i -e 's%http://archive.ubuntu.com/ubuntu%mirror://mirrors.ubuntu.com/mirrors.txt%' /etc/apt/sources.list
RUN sed -i -e 's%archive.ubuntu.com/ubuntu%kr.archive.ubuntu.com/ubuntu%' /etc/apt/sources.list
# # RUN sed -i -e 's%archive.ubuntu.com/ubuntu%ftp.neowiz.com/ubuntu%' /etc/apt/sources.list

# # RUN apt-get update && apt-get -y install wget netselect && \
# # netselect -v -s10 -t20 `wget -q -O- https://launchpad.net/ubuntu/+archivemirrors | grep -P -B8 "statusUP|statusSIX" | grep -o -P "(f|ht)tp://[^\"]*"`

# # RUN apt-get update && apt-get -y install curl && \
# # curl -s http://mirrors.ubuntu.com/mirrors.txt | xargs -n1 -I {} sh -c 'echo `curl -r 0-102400 -s -w %{speed_download} -o /dev/null {}/ls-lR.gz` {}' |sort -g -r |head -1| awk '{ print $2  }'


# RUN apt-get update && apt-get -y install curl wget apt-utils
# RUN wget -q http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list && \
#   apt-get update
# RUN apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring && \
#   apt-get update
# RUN apt-get -y install build-essential vim-nox git dmd-bin dmd-doc dub libevent-dev libssl-dev libsqlite3-dev

# RUN apt-get update && apt-get -y install curl wget apt-utils && \
#   wget -q http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list && \
#   apt-get update && \
#   apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring && \
#   apt-get update && \
#   apt-get -y install build-essential vim-nox git dmd-bin dmd-doc dub libevent-dev libssl-dev libsqlite3-dev && \
#   apt-get clean

RUN apt-get update && apt-get -y install curl wget apt-utils xz-utils && \
  apt-get clean && \
  curl -fsS https://dlang.org/install.sh | bash -s dmd-2.073.2 -v
RUN apt-get -y install build-essential vim-nox git libevent-dev libssl-dev libsqlite3-dev && \
  apt-get clean

# # owlchain-core build
# RUN git clone -b docker https://github.com/owlchain/owlchain-core.git && \
#  cd owlchain-core && ./build.sh


# RUN git clone https://github.com/hey-jude/owlnet.git && \
#  cd owlnet && . ~/dlang/dmd-2.073.2/activate && dub build -v

EXPOSE 8080