FROM golang:latest
WORKDIR /app
RUN go install github.com/cosmtrek/air@latest
COPY ./adjutor-api/go.mod ./adjutor-api/go.sum ./
RUN go mod download
CMD ["air", "-c", ".air.toml"]