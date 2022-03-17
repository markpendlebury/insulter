FROM alpine

WORKDIR /insulter
RUN apk add --no-cache --upgrade bash
COPY generator.sh .
COPY insults.txt .

CMD [ "./generator.sh" ]