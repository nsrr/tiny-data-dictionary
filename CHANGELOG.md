## 0.0.0 (unreleased)

### Overview

Data Dictionary currently comprised of two primary folders: `variables` and `domains`

#### Variables

`variables` contains a folder hierarchy with folders that contain `.json` files

- Each `.json` file provides information about the variable:
  - `id`:`string`:**required**
    - The unique ID for the variable
  - `display_name`:`string`:**required**
    - Used to display the variable across different systems
  - `description`:`string`:*optional*
    - Additional information about the variable
  - `type`:`string`:**required**
    - What type of data the variable represents
  - `domain`:`string`:*optional*
    - Specific domain of the variable used for variables with discrete options and/or missing codes

#### Domains

`domains` contains a folder hierarchy with folders that contain `.json` files

- Each `.json` files provides information about the domain:
  - An array of options, each option has:
    - `value`:**required**
      - The value mapped in the corresponding data
    - `display_name`:`string`:**required**
      - Used to display the option
    - `description`:`string`:*optional*
      - Additional information about the option

### Enhancements
- Initial Sample Data Dictionary in JSON format including variables and domains
- Added configuration for TravisCI Continuous Integration tests
- Test Data Dictionary using the Spout Gem
