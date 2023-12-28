FROM golang:alpine as golang

# Create appuser
ENV USER=appuser
ENV UID=10001
RUN adduser \    
    --disabled-password \    
    --gecos "" \    
    --home "/nonexistent" \    
    --shell "/sbin/nologin" \    
    --no-create-home \    
    --uid "${UID}" \    
    "${USER}"

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download && go mod verify
RUN apk add --no-cache upx 

COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -gcflags=all="-l" -o /server .

RUN upx -9 -v --ultra-brute --lzma --best /server
#FROM gcr.io/distroless/static-debian11
FROM scratch

COPY --from=golang /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=golang /etc/passwd /etc/passwd
COPY --from=golang /etc/group /etc/group

COPY --from=golang /server ./

EXPOSE 8080
USER appuser:appuser

CMD ["/server"]