package Boilerplate::Gallery;
use Mojo::Base 'Mojolicious::Controller';

use File::Find;
use utf8;

sub gallery{
  my $self = shift;  
  
  my $imgs = [];
  my $url_location = q|/assets/img/cluj_pm|;
  
  find( sub {
        push @$imgs, sprintf( "%s/%s", $url_location, $_ ) if ( $File::Find::dir =~ m|$url_location$|gmix && $_ =~ m|\.jpg|gmix )
    },
    @{ $self->app->static->paths }
  );  

  $self->render(
    template => sprintf('gallery/%s_gallery', $self->param('view_as') ),
    images => $imgs
  );
}