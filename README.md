# Jekyll Hash Filter

Adds a variety of filters to enable string hashing in Jekyll.

Currently the filter supports the following hash functions:

- SHA-224, SHA-256, SHA-384, SHA-512, SHA-512/224, SHA-512/256
- SHA3-224, SHA3-256, SHA3-384, SHA3-512

This plugin uses the OpenSSL implementations of the above hash functions.

## Installation

Add the following to your `Gemfile`:

```
gem 'jekyll-hash`
```

Then make the following entry under `_config.yml`:

```
plugins:
    - jekyll-hash
```

## Usage

The filters can be used as follows:

```
{{ 'text to be hashed' | sha_256 }}
{{ 'text to be hashed' | sha_512_224 }}
{{ 'text to be hashed' | sha3_512 }}
```

## Testing

Run the command:

```
bundle exec rspec
```
