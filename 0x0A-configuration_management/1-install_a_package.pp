#!/bin/bash/pup
#Install the specific flask version
package { 'python3-pip':
  ensure => 'present',
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
