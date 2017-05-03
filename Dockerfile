FROM ubuntu:xenial-20170417.1
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" > /etc/apt/sources.list.d/mono-xamarin.list
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates-mono nuget
RUN apt-get update && apt-get install -y --no-install-recommends curl
RUN cert-sync /etc/ssl/certs/ca-certificates.crt
RUN nuget update -self
