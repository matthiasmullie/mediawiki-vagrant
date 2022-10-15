# == Class: redis::php
#
# This class configures phpredis, a PHP extension that provides an API
# for communicating with the Redis key-value store.
#
class redis::php {
    include ::redis
    include ::apache

    package { ['php7.4-redis', 'php7.4-igbinary']:
        ensure  => present,
        require => Service['redis-server'],
        notify  => Service['apache2'],
    }
}
