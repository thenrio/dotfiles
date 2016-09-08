# vi: set ft=bash
docker+clean() {
  docker rmi $(docker images  -q --filter dangling=true)
}
