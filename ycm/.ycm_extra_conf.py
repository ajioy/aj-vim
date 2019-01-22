import os
import ycm_core

# flags = [
  # '-Wall',
  # '-Wextra',
  # '-Werror',
  # '-Wno-long-long',
  # '-Wno-variadic-macros',
  # '-fexceptions',
  # '-ferror-limit=10000',
  # '-DNDEBUG',
  # '-std=c99',
  # '-xc',
  # '-isystem/usr/include/',
  # ]

flags = [
'-Wall',
'-Wextra',
'-Werror',
'-Wno-long-long',
'-Wno-variadic-macros',
'-fexceptions',
'-DNDEBUG',
'-std=c++11',
'-x',
'c++',
'-I',
'/usr/include',
'-isystem',
'/usr/lib/gcc/x86_64-linux-gnu/6/include',
'-isystem',
'/usr/include/x86_64-linux-gnu',
'-isystem'
'/usr/include/c++/6',
'-isystem',
'/usr/include/c++/6/bits'
]

SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', ]

def FlagsForFile( filename, **kwargs ):
      return {
        'flags': flags,
        'do_cache': True
}
