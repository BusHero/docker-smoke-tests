FROM alpine:3.14
RUN apk update && apk add python3

# Run smoke tests
COPY ./smoke_tests /tests
RUN chmod +x /tests/tests.sh
RUN /tests/tests.sh

# Remove smoke tests
RUN rm /tests/ -r
RUN if [ -d /tests/tests.sh ]; then echo "/tests was not removed"; exit 1; fi
