Greet() {
    echo Hello "${PARAM_TO}"
}

# Will not run if sourced for bats-core tests.
# View src/tests for more information.
TEST_ENV="bats-core"
if [ "${0#*$TEST_ENV}" == "$0" ]; then
    Greet
fi
