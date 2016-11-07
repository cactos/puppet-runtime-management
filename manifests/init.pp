# Class: cactos_runtime_optimisation
# ===========================
#
# Installs the cactos runtime optimisation toolkit
#
# Parameters
# ----------
#
# * `todo`
#  todo 
# 
#
# Examples
# --------
#
# @example
#    class { 'cactos_runtime_optimisation':
#      $todo = "todo"
#    }
#
# Authors
# -------
#
# Simon Volpert <simon.volpert@uni-ulm.de>
#
class cactos_runtime_optimisation (

String $test="HELLO",
)inherits cactos_runtime_optimisation::params {


  contain cactos_runtime_optimisation::install
  contain cactos_runtime_optimisation::service

  Class['::cactos_runtime_optimisation::install']->
  Class['::cactos_runtime_optimisation::service']


}
