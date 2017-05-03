FROM ubuntu:xenial-20170214
RUN apt-get --yes update
RUN apt-get --yes install --no-install-recommends ca-certificates-mono nuget
RUN nuget update -self
