class cactos_runtime_optimisation::service{ 
  #create runtime optimisation  service  
  service { 'rot':
    #require    => File[''],
    ensure     => running,
    start      => "nohup /opt/RuntimeOptimisationToolkit.gtk.linux.x86_64/RuntimeOptimisationToolkit 2>&1 >> /var/log/runtime-optimisation.log &",
    stop       => "/usr/bin/pkill -f RuntimeOptimisationToolkit",
    pattern    => "RuntimeOptimisationToolkit", #todo improve pattern to avoid ambiguity
    provider   => 'base',
  }
}
