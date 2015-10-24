class aws_lambda::install inherits aws_lambda {
  include epel

  class { '::nodejs':
    manage_package_repo       => false,
    nodejs_package_ensure     => present,
    nodejs_dev_package_ensure => present,
    npm_package_ensure        => present,
    repo_class                => '::epel',
    repo_ensure               => absent,
  }

  package { 'ImageMagick':
    ensure => installed,
  }

  package { [
    'grunt-cli',
    'imagemagick',
  ]:
    ensure   => installed,
    provider => 'npm',
  }
}
