FROM koinos/koinos-sdk-cpp:latest as cpp

FROM koinos/koinos-sdk-as:latest

# CPP dependencies: cmake, python3 (for proto)

RUN apt update && \
    apt install -y \
        cmake \
        python3 \
        python3-pip \
        python3-venv && \
    apt clean

ADD ./docker/ /opt

COPY --from=cpp /opt /opt

ENTRYPOINT [ "/opt/scripts/build.sh" ]
