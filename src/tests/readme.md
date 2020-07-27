# Run Bats Tests

Unit test your bash using the "[Bats-Core](https://github.com/bats-core/bats-core)" Bash Automated Testing System. Using the [Bats Orb](https://github.com/CircleCI-Public/BATS-orb) on CircleCI.

**Example BATS test**

```shell
@test "addition using bc" {
  result="$(echo 2+2 | bc)"
  [ "$result" -eq 4 ]
}

```

For more in-depth example usage please view the BATS orb and CircleCI testing documentation.

## See:
 - [BATS Orb](https://circleci.com/orbs/registry/orb/circleci/bats)
 - [Orb Testing CircleCI Docs](https://circleci.com/docs/2.0/testing-orbs)
 - [BATS-Core GitHub](https://github.com/bats-core/bats-core)