# Include Scripts

Utilizing the `circleci orb pack` CLI command, it is possible to import files (such as _shell scripts_), using the `<<include(scripts/script_name.sh)>>` syntax in place of any config key's value.

```yaml
description: >
  This command echos "Hello World" using file inclusion.
parameters:
  to:
    type: string
    default: "World"
    description: "Hello to who?"
steps:
  - run:
      environment:
        PARAM_TO: <<parameters.to>
      name: Hello <<parameters.to>
      command: <<include(scripts/greet.sh)>>

```

```shell
Greet() {
    echo Hello ${PARAM_TO}
}

# Will not run if sourced from another script. This is done so this script may be tested.
# View src/tests for more information.
if [[ "$_" == "$0" ]]; then
    Greet
fi
```