mactelnet_src = [
    'autologin.c',
    'console.c',
    'interfaces.c',
    'mactelnet.c',
    'mndp.c',
    'mtwei.c',
    'protocol.c',
]
mactelnet_deps = [
    intl_dep,
    openssl_dep,
]
executable('mactelnet',
    mactelnet_src,
    dependencies: mactelnet_deps,
    include_directories: config_h_include,
    c_args : '-DFROM_MACTELNET'
)

mactelnetd_src = [
    'console.c',
    'interfaces.c',
    'mactelnetd.c',
    'protocol.c',
    'users.c',
]

mactelnetd_deps = [
    intl_dep,
    openssl_dep,
]
executable(
    'mactelnetd',
    mactelnetd_src,
    dependencies: mactelnetd_deps,
    include_directories: config_h_include,
)

macping_src = [
    'interfaces.c',
    'macping.c',
    'protocol.c',
]
macping_deps = [
    intl_dep,
]
executable(
    'macping',
    macping_src,
    dependencies: macping_deps,
    include_directories: config_h_include,
)

mndp_src = [
    'mndp.c',
    'protocol.c',
]
mndp_deps = [
    intl_dep,
]
#openssl_dep,
executable('mndp',
    mndp_src,
    dependencies: mndp_deps,
    include_directories: config_h_include,
)