#Mojolicious and Bootstrap from Twitter

##Features

* YAML config for Mojolicious
* Configurable application menu based on user type
* Unified user notification through messages displayed (alert, success, info)
* Examples of using the Mojolicious sessions


##Getting Started

###1. Installation
####1.1 Install Mojolicious
<pre>  sudo -s 'curl -L cpanmin.us | perl - Mojolicious'</pre>

####1.2 Install Mojolicious::Plugin::YamlConfig
<pre>sudo cpan Mojolicious::Plugin::YamlConfig</pre>


###2. Clone this repository
<pre> git clone git://github.com/tudorconstantin/Mojolicious-Boilerplate.git</pre>

###3. Start the app for development
<pre>cd Mojolicious-boilerplate
morbo script/boilerplate</pre>

###4. Point your browser at http://127.0.0.1:3000

#Web Application Development with Mojolicious Boilerplate

##Configure application menu
* start by editing 
<pre>conf/config.yaml</pre>
* config values found in this file are accessible inside the application as a hash ref in
<pre>#$c being the controller instance
$c->app->{config}</pre>
* there are 2 demo users in the config file: **admin** and **regular**. Those users are used for showing how to build different application menu for different user types. In your application, you'll 'probably' take your users from a DB or something
* based on user types, we have 3 types of menu:
  * **anonymous** - when there is no one logged in
  * **regular** - when there is a 'normal' user logged in
  * **admin**   - menu for the admins

##Display **error/notice/success** messages automatically
* simply push strings into the **$self->session->{error_messages}** array ref, in order to display error messages
 <pre>push @{ $self->session->{error_messages} },  'Error message'</pre>
* same for **notice** or **success** messages:
<pre>push @{ $self->session->{notice_messages} },  'You look too good to be true';
push @{ $self->session->{success_messages} },  'Success looks good on anybody';</pre>

![Mojolicious/Bootstrap msg examples](https://github.com/tudorconstantin/Mojolicious-Boilerplate/wiki/images/mojo_messages.jpg)

##About [Mojolicious](http://mojolicio.us)

* Awesome Perl microframework inspired by [Sinatra](http://www.sinatrarb.com/)
* Very easy to get started with:

```perl
use Mojolicious::Lite;
get '/' => {text => 'Hello World!'};
app->start;
```

* Lots of [documentation](http://mojolicio.us/perldoc) and [guides](http://mojolicio.us/perldoc#GUIDES)
* Flexible, powerful and intuitive


##About [Bootstrap from Twitter](http://twitter.github.com/bootstrap/)
* Give your applications a slick look and feel
* Gain cross browser compatibility out of the box
* Very [customizable](http://twitter.github.com/bootstrap/download.html)
* Get access to a great collection of [components](http://twitter.github.com/bootstrap/components.html) and [plugins](http://twitter.github.com/bootstrap/javascript.html)
