FROM golang:1.22
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN go build -o /my_app
EXPOSE 8080
CMD ["/my_app"]
