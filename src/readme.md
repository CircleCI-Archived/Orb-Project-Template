# Orb Source

Orbs are shipped as individual `orb.yml` files, however, to make development easier, it is possible to author an orb in _unpacked_ form, which can be _packed_ with the CircleCI orb CLI, and published.

The generated `.circleci/config.yml` file contains the configuration code needed to automatically pack,  test, and deploy and changes made to the contents of the orb source in this directory.

## @orb.yml

This is the entry point for our orb "tree", which becomes our `orb.yml` file later.

Within the `@orb.yml` we generally specify 4 configuration keys

**Keys**

1. **Version**
    Specify version 2.1 for orb-compatible configuration `version: 2.1`
2. **Description**
    Give your orb a description. Shown within the CLI and orb registry
3. **Display**
    Specify the `home_url` referencing documentation or product URL, and `source_url` linking to the orb's source repository.
4. **Orbs**
    (optional) Some orbs may depend on other orbs. Import them here.

## See:
 - [Orb Author Intro](https://circleci.com/docs/2.0/orb-author-intro/#section=configuration)
 - [Reusable Configuration](https://circleci.com/docs/2.0/reusing-config)