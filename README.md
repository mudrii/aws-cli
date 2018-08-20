# awscli

Check the latest version on

[Latest Version](https://github.com/aws/aws-cli/releases)

Add aliase

```sh
alias aws='docker run --rm -tiv $HOME/.aws:/root/.aws -v $(pwd):/aws mudrii/aws-cli aws'
```