class aws_lambda::install inherits aws_lambda {
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