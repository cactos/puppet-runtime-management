class cactos_runtime_optimisation::install{ 
  package{'java-1.7.0-openjdk':
    ensure => installed,
  }

  package{'unzip':
    ensure => installed,
  }->
  # download and unzip code:
  archive { "rot.zip":
    ensure        => present,
    path          => "/opt/rot.zip",
    source         => "https://sdqweb.ipd.kit.edu/eclipse/cactos/runtimeoptimisation/binary_nightly/RuntimeOptimisationToolkit.gtk.linux.x86_64.zip",
    extract       => true,
    creates       => '/opt/RuntimeOptimisationToolkit.gtk.linux.x86_64',
    extract_path  => '/opt/',
    cleanup       => false,
  }
}
