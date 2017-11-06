#!/bin/bash
vt() {
  for t in "$@"; do urxvtcd -title $t; done
}
