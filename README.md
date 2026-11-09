# Norminette-ci

A tool to check your code against the [norminette](https://github.com/42school/norminette) rules.

## How to use

Create folder `.github/workflows`

Create `norminette.yml` with basic content for CICD.

```yml
name: "Norminette"

on:
  push:
    branches: # the target branches
      - "master"
      - ...
  pull_request: # on every pull request
  workflow_dispatch: # manual launch

jobs:
  norminette:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6

      - name: "norminette"
        uses: 0verlight/norminette-ci@v1
        with:
          paths: "src/"
```

[Learn more](https://docs.github.com/en/actions) here about CICD github

### Parameters

| param          | value              | description                                           | required | default |
|----------------|--------------------|-------------------------------------------------------|----------|---------|
| paths          | /path/to/check     | Space-separated files/directories to check            | false    | "."     |
| global-allowed | true or false      | If true, global variable notices don't fail the check | false    | "false" |
| python-version | any version >=3.10 | Install specific version of python                    | false    | "3.11"  |

## LICENSE

MIT
