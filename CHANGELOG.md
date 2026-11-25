# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- Pin the `aiven/aiven` provider constraint to `>= 4.55.2, < 4.56.0`: the `aiven_cassandra` and `aiven_cassandra_user` resources were removed from the provider in `4.56.0`.

### Deprecated
- This module is deprecated: Aiven for Apache Cassandra reached end-of-life (no new services since November 30, 2025; existing services powered off and deleted after December 31, 2025). No further updates are planned.

## [2.0.0] - 2023-03-24

### Changed
- **Breaking:** add aiven/aiven provider v4 support.

## [1.1.2] - 2023-03-24

### Fixed
- Lock provider version.

## [1.1.1] - 2022-10-03

### Changed
- Rework examples to a one-variable approach.

## [1.1.0] - 2022-09-20

### Added
- Add `service_integrations`.

## [1.0.1] - 2022-08-18

### Fixed
- Fix tags section.

## [1.0.0] - 2022-08-17

### Added
- Add `user` submodule and examples.

## [0.3.0] - 2022-08-17

### Added
- Add `cassandra` and access blocks to `cassandra_user_config`.

## [0.2.0] - 2022-08-17

### Added
- Add `cassandra_user_config`.

## [0.1.0] - 2022-08-17

- Initial release.

[Unreleased]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/compare/2.0.0...HEAD
[2.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/compare/1.1.2...2.0.0
[1.1.2]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/compare/1.1.1...1.1.2
[1.1.1]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/compare/1.0.1...1.1.0
[1.0.1]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/compare/0.3.0...1.0.0
[0.3.0]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-cassandra/releases/tag/0.1.0
