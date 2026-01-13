# homebrew-nanotation

Homebrew Tap for [nanotation](https://github.com/sickfar/nanotation).

## Installation

### Latest Version (0.2.0)

```bash
brew tap sickfar/nanotation
brew install nanotation
```

### Version 0.1.0

If you need the older version with Linux ARM64 support:

```bash
brew tap sickfar/nanotation
brew install nanotation@0.1
```

## Usage

```bash
nanot --help
```

## Available Versions

- **nanotation** (0.2.0) - Latest version
  - Platforms: macOS ARM64, Linux x86_64
- **nanotation@0.1** (0.1.0) - Legacy version
  - Platforms: macOS ARM64, Linux x86_64, Linux ARM64

## Switching Between Versions

Versioned formulas are keg-only and won't be linked automatically. To use version 0.1.0:

```bash
brew link --force --overwrite nanotation@0.1
```

To switch back to the latest version:

```bash
brew unlink nanotation@0.1
brew link nanotation
```
