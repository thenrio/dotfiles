# from https://aws.amazon.com/blogs/developer/aws-cli-v2-docker-image/
alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli:2.15.9'
