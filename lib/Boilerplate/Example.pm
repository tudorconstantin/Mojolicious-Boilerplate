package Boilerplate::Example;
use Mojo::Base 'Mojolicious::Controller';

use utf8;

# This action will render a template
sub welcome {
  my $self = shift;

  push @{ $self->session->{error_messages} },  'You have to login to proceed!!' if !defined $self->session->{user};  

  # Render template "example/welcome.html.ep" with message
  $self->render(
    message => 'Use this project as a way to quick start any new project!!');
}

sub login {
  my $self = shift;
  
  $self->session->{user} = $self->_get_a_user();

  push @{ $self->session->{success_messages} },  'Congratulations, you have successfully logged in.' ;
  push @{ $self->session->{notice_messages} }, sprintf('Welcome %s %s.', $self->session->{user}->{first_name}, $self->session->{user}->{last_name} );

  $self->redirect_to('/');
}


sub logout{
  my $self = shift;

  $self->session( expires => 1);

  $self->redirect_to('/');
}

sub about{
  my $self = shift;
  
}

sub signed_in_about{
  my $self = shift;
  
  $self->render( {
    template  => 'example/about',
    user_type => $self->param('user_type'),
  } );
}

sub signed_in_menu{
  my $self = shift;
  
  $self->render( {
    template  => 'example/menu_page',
    user_type => $self->param('user_type'),
  } );
}
              

sub _get_a_user{
  my $self = shift;

  #randomly get a user from config
  return $self->app->{config}->{demo_users}->{ ( keys $self->app->{config}->{demo_users} )[ rand( scalar( keys $self->app->{config}->{demo_users} ) ) ] };
}


1;
