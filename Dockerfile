FROM ubuntu:18.04

########################
# Install what we need
########################

# Install the container
RUN apt-get update                                       \
    && apt-get -y install git wget make                  \
    && apt-get -y clean

# install pandoc
RUN mkdir ~/temp                                         \
    && cd ~/temp                                         \
    && wget https://developer.download.nvidia.com/embedded/L4T/r28_Release_v3.0/gcc-4.8.5-aarch64.tgz    \
    && cd /                                              \
    && tar -xzvf ~/temp/gcc-4.8.5-aarch64.tgz            \
    && rm -rf ~/temp                                     \
    && cd ~

# Run when the container launches
CMD ["/bin/bash"]
