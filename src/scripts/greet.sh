Greet() {
    echo Hello "${PARAM_TO}"
}

# Will not run if sourced from another script. This is done so this script may be tested.
# View src/tests for more information.
if [[ "$_" == "$0" ]]; then
    Greet
fi