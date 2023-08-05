# path_both

Utilities for working with file and directory paths, supporting both POSIX and Windows separators.

This package recognises both slash `/` (slash) and `\` (backslash) as path-part separators. You can mix them in the paths and the parts of the path will still be recognised.

Similar packages:

| Package      | Description                                                             |
|:-------------|:------------------------------------------------------------------------|
| [path]       | recognises the path-part separator from the operating system            |
| [path_posix] | recognises the `/` (slash) as the path-part separator                   |
| [path_win32] | recognises the `\` (backslash) as the path-part separator               |
| path_both    | recognises both `/` (slash) and `\` (backslash) as path-part separators |

## Synopsis

```go
import prantlf.path_both { dirname }

dirname('/home/prantlf')     // returns '/home'
dirname(r'C:\Users\prantlf') // returns r'C:\Users'
```

## Installation

You can install this package either from [VPM] or from GitHub:

```txt
v install prantlf.path_both
v install --git https://github.com/prantlf/v-path-both
```

## API

The following functions are exported:

### basename(path string) string

Theis method returns the last portion of a path, similar to the [POSIX basename] command. Trailing directory separators are ignored.

```go
path_both.basename('/home/prantlf')     // returns 'prantlf'
path_both.basename(r'C:\Users\prantlf') // returns r'prantlf'
```

### dirname(path string) string

This method returns the directory name of a path, similar to the [POSIX dirname] command. Trailing directory separators are ignored.

```go
path_both.dirname('/home/prantlf')     // returns '/home'
path_both.dirname(r'C:\Users\prantlf') // returns r'C:\Users'
```

### extname(path string) string

This method returns the extension of the path, from the last occurrence of the `.` (period) character to end of string in the last portion of the path. If there is no `.` in the last portion of the path, or if there are no `.` characters other than the first character of the basename of path (see `basename` above), an empty string is returned.

```go
path_both.extname('/home/prantlf/start.sh')      // returns '.sh'
path_both.extname(r'C:\Users\prantlf\start.bat') // returns r'.bat'
```

## Contributing

In lieu of a formal styleguide, take care to maintain the existing coding style. Lint and test your code.

## License

Copyright (c) 2023 Ferdinand Prantl

Licensed under the MIT license.

[VPM]: https://vpm.vlang.io/packages/prantlf.path_both
[path]: https://github.com/prantlf/v-path
[path_posix]: https://github.com/prantlf/v-path-posix
[path_win32]: https://github.com/prantlf/v-path-win32
[POSIX basename]: https://man7.org/linux/man-pages/man3/basename.3p.html
[POSIX dirname]: https://man7.org/linux/man-pages/man3/dirname.3p.html
