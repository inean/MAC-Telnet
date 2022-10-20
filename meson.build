project(
    'mactelnet',
    'c',
    version : '1.0.0',
    license: 'GPLv2+',
    meson_version: '>=0.62.1',
    default_options: [
        'c_std=c99',
        'b_pie=true',
        'warning_level=2',
    ],
)

# configure suff
conf = configuration_data()
conf.set_quoted('PACKAGE', meson.project_name())
conf.set_quoted('PACKAGE_VERSION', meson.project_version())

# check compile flags
cc = meson.get_compiler('c')

# Check for headers
headers = {
    'arpa/inet.h': true,
    'fcntl.h': true,
    'float.h': true,
    'libintl.h': true,
    'locale.h': true,
    'netinet/in.h': false,
    'netinet/ether.h': false,
    'net/ethernet.h': false,
    'paths.h': true,
    'stdlib.h': true,
    'string.h': true,
    'sys/ioctl.h': true,
    'sys/socket.h': true,
    'sys/time.h': true,
    'syslog.h': true,
    'termios.h': true,
    'unistd.h': true,
    'utmp.h': true,
    'utmpx.h': true,
}
foreach header, required: headers
  if cc.has_header(header)
    if not required
      conf.set('HAVE_@0@'.format(header.underscorify().to_upper()), 1)
    endif
  elif required
    error('missing header \'@0@\''.format(header))
  endif
endforeach

# check availability of various common functions (non-fatal if missing)
functions = {
    'getrandom': false,
    'arc4random': false,
    'alarm': true,
    'bzero': true,
    'chown': true,
    'clock_gettime': true,
    'fork': true,
    'getpass': true,
    'gettimeofday': true,
    'inet_ntoa': true,
    'memset': true,
    'malloc': true,
    'select': true,
    'setenv': true,
    'setlocale': true,
    'socket': true,
    'strcasecmp': true,
    'strerror': true,
    'strncasecmp': true,
    'sysctl': false,
    'sysinfo': false,
    'strnlen': true,
    'uname': true,
}
alternative_functions = {
    'getrandom': 'arc4random',
    'sysctl': 'sysinfo',
}
available_functions = [
]
foreach func, required : functions
  if cc.has_function(func)
    available_functions += func
    if not required
      conf.set('HAVE_@0@'.format(func.to_upper()), 1)
    endif
  elif required
    error('missing function \'@0@\''.format(func))
  endif
endforeach
foreach func, alt_func: alternative_functions
  if func not in available_functions and alt_func not in available_functions
    error('missing headers \'@0@\' and  \'@1@\'. One is neede'.format(func, alt_func))
  endif
endforeach

# check for struct types membership
members = [
  [ 'struct ip', ['ip_src', 'ip_dst', 'ip_sum'], '#include <netinet/ip.h>' ],
  [ 'struct udphdr', ['source', 'check', 'uh_sport', 'uh_sum'],   '#include <netinet/udp.h>' ],
  [ 'struct ether_header', ['h_source'], '#include <net/ethernet.h>'],
 ]
foreach member : members
  if cc.has_type(member[0], prefix: member[2])
    type = member[0]
    type = type.underscorify().to_upper()
    conf.set('WITH_@0@'.format(type), 1)
    foreach m : member[1]
      if cc.has_member(member[0], m, prefix: member[2])
        m =  m.underscorify().to_upper()
        conf.set('WITH_@0@_@1@'.format(type, m), 1)
      endif
    endforeach
  endif
endforeach

# OpenSSL
# We only hace pkg-config openssl on Linux. For MSVC, XCode or
# CC on non Linux systems we don't have it
openssl_dep = dependency('openssl', required: host_machine.system().startswith('linux'))
openssl_prefix = get_option('openssldir')
if not openssl_dep.found()
  if openssl_prefix == ''
    error('missing OpenSSL package')
  endif
  openssl_inc = include_directories(join_paths(openssl_prefix, 'include'))
  openssl_lib = cc.find_library(
    'crypto',
    required: true,
    has_headers: ['openssl/evp.h', 'openssl/ec.h', 'openssl/err.h', 'openssl/sha.h'],
    header_include_directories: openssl_inc,
    dirs: [join_paths(openssl_prefix, 'lib')],
  )
  openssl_dep = declare_dependency(dependencies: openssl_lib, include_directories: openssl_inc)
endif

# Gettext support
i18n = import('i18n')
intl_dep = dependency('', required: false)
if not cc.has_function('libintl_gettext')
  intl_dep = cc.find_library('intl', required: true)
endif
add_project_arguments('-DGETTEXT_PACKAGE=' + meson.project_name(), language: 'c')
conf.set_quoted('LOCALEDIR', join_paths(get_option('prefix'), get_option('localedir')))
conf.set_quoted('USERSFILE', join_paths(get_option('prefix'), get_option('sysconfdir'), 'mactelnetd.users'))
subdir('po')

# write conf
configure_file(output : 'config.h', configuration : conf)
config_h_include = include_directories('.')

# process subdirs
subdir('config')
subdir('doc')
subdir('src')
