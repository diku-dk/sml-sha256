# sml-sha256 [![CI](https://github.com/diku-dk/sml-sha256/workflows/CI/badge.svg)](https://github.com/diku-dk/sml-sha256/actions)

Standard ML library for SHA256 cryptographic hashing.

## Overview of MLB files

- `lib/github.com/diku-dk/sml-sha256/sha256.mlb`:

  - **signature** [`SHA256`](lib/github.com/diku-dk/sml-sha256/sha256.sig)
  - **structure** `SHA256 : SHA256`

## Use of the package

This library is set up to work well with the SML package manager
[smlpkg](https://github.com/diku-dk/smlpkg).  To use the package, in
the root of your project directory, execute the command:

```
$ smlpkg add github.com/diku-dk/sml-sha256
```

This command will add a _requirement_ (a line) to the `sml.pkg` file in your
project directory (and create the file, if there is no file `sml.pkg`
already).

To download the library into the directory
`lib/github.com/diku-dk/sml-sha256`, execute the command:

```
$ smlpkg sync
```

You can now reference the `mlb`-file using relative paths from within
your project's `mlb`-files.

Notice that you can choose either to treat the downloaded package as
part of your own project sources (vendoring) or you can add the
`sml.pkg` file to your project sources and make the `smlpkg sync`
command part of your build process.

## Authors

The `Sha256` structure is adopted from
[https://github.com/standardml/cmlib](https://github.com/standardml/cmlib),
which is distributed under the MIT License (see the file
[AUTHORS](AUTHORS) for a list of contributers to the
[https://github.com/standardml/cmlib](https://github.com/standardml/cmlib)
library. The source code has been altered by Martin Elsman to work
well with [smlpkg](https://github.com/diku-dk/smlpkg).
