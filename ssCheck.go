package main

import (
	"fmt"
	"os/exec"
	"time"
)

func runShell(str string) string {
	cmd := exec.Command(str)
	bytes, err := cmd.Output()
	if err != nil {
		fmt.Println("cmd.Output: ", err)
		return ""
	}
	return string(bytes)
}

func main() {
	for {
		str := runShell("./checkSS.sh")
		if len(str) == 0 {
			runShell("./startSS.sh")
		}
		//time.Sleep(time.Minute)
		time.Sleep(1 * time.Second)
	}
}
