FROM golang:1.18 AS builder

WORKDIR /app

COPY . .

RUN go build ./desafio.go



FROM scratch

WORKDIR /app

COPY --from=builder /app/desafio .

CMD ["/app/desafio"]