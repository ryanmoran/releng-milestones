#!/bin/bash

function main() {
  local cwd
  cwd="${1}"

  go get github.com/russross/blackfriday-tool

  local input output
  input="${cwd}/milestones.md"
  output="${cwd}/milestones.html"

  blackfriday-tool "${input}" "${output}"
  open "${output}"
}

main "$(cd "$(dirname "${0}")" && pwd)"
