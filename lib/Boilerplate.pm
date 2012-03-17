package Boilerplate;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  $self->secret("Very well hidden secret");
  
  # Everything can be customized with options
  my $config = $self->plugin( yaml_config => {
        file      => 'conf/config.yaml',
        stash_key => 'conf',
        class     => 'YAML::XS'
  });
                                
  $self->{config} = $config;

  $self->hook(after_static_dispatch => sub {
    my $c = shift;
    
    $c->session->{_menu} = defined($c->session->{user})
                ? $c->app->{config}->{app_menu}->{$c->session->{user}->{user_type} }
                : $c->app->{config}->{app_menu}->{anonymous} ;
                                                                  
   });  
   
  # Routes
  my $r = $self->routes;

  # Normal route to controller
  $r->route('/')->to('example#welcome');  
  $r->route('/home')->to('example#welcome');
  
  $r->route('/login')->to('example#login');
  $r->route('/logout')->to('example#logout');
  $r->route('/sign-up')->to('example#about');
  
  $r->route('/about')->to('example#about');    
  $r->route('/:user_type/about')->to('example#signed_in_about');  
  $r->route('/:user_type/menu')->to('example#signed_in_menu');
  
  #route to photo gallery (controller Gallery, action gallery)
  $r->route('/clujpm_gallery/:view_as')->to('gallery#gallery'); 
  
}


1;
