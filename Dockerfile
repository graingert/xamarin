FROM ubuntu:xenial-20170417.1
RUN apt-get --yes update
RUN apt-get --yes install --no-install-recommends ca-certificates-mono nuget
RUN nuget update -self
