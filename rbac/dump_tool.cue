package kube

import (
	"encoding/yaml"
	"encoding/json"
	"tool/cli"
)

command: dumpy: {
	task: print: cli.Print & {
		text: yaml.MarshalStream(objects)
	}
}

command: dumpj: {
	task: print: cli.Print & {
		text: json.MarshalStream(objects)
	}
}
