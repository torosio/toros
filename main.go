package main

import (
	"os"
	"os/signal"

	log "github.com/sirupsen/logrus"
)

func main() {
	log.Info("Toros successfully started")

	signalCh := make(chan os.Signal, 1)
	signal.Notify(signalCh, os.Interrupt)

	log.Info("Press Ctrl-C to shutdown the server")

	<-signalCh
	log.Info("Shutting down the server")
}
