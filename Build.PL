# $Author: ddumont $
# $Date: 2009-09-24 12:00:47 +0200 (jeu 24 sep 2009) $
# $Revision: 1031 $

#    Copyright (c) 2009 Dominique Dumont.
#
#    This file is part of Config-Model-Approx.
#
#    Config-Model is free software; you can redistribute it and/or
#    modify it under the terms of the GNU Lesser Public License as
#    published by the Free Software Foundation; either version 2.1 of
#    the License, or (at your option) any later version.
#
#    Config-Model is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#    Lesser Public License for more details.
#
#    You should have received a copy of the GNU Lesser Public License
#    along with Config-Model; if not, write to the Free Software
#    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
#    02110-1301 USA

use Module::Build;
use Data::Dumper ;

use warnings FATAL => qw(all) ;
use strict ;


my $build = Module::Build->new
  (
   module_name   => 'Config::Model::Approx',
   license       => 'lgpl',
   dist_author   => "Dominique Dumont (ddumont at cpan dot org)",
   dist_abstract => "Approx configuration files editor",
   script_files   => [ qw/config-edit-approx/ ],
   requires      => {
		     perl              => '5.8.0',
		     'Config::Model'   => '0.637',
		     'Log::Log4perl'   => 0 ,
		    },
   recommends    => {
                     'Config::Model::CursesUI' => 0, # Curses interface
                     'Config::Model::TkUI'     => 0, # graphical interface
                    },
   add_to_cleanup => [qw/wr_test/] ,
  );


$build->add_build_element('pl');
$build->create_build_script;