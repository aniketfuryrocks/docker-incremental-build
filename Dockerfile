FROM rust:latest as init 
WORKDIR /app


# INFO: dev 
FROM init as dev 

RUN cargo install cargo-watch
CMD cargo watch -x run


# INFO: prod 
FROM init as prod 

ADD . .
RUN cargo install --path .
RUN cargo clean
CMD curiosity
