#Mojolicious and Bootstrap from Twitter

##Features

* YAML config for Mojolicious
* Configurable application menu based on user type
* Unified user notification through messages displayed (alert, success, info)
* Examples of using the Mojolicious sessions 
* No extra dependencies except for YAML::XS


##Getting Started
###1. Install Mojolicious

<pre>  sudo -s 'curl -L cpanmin.us | perl - Mojolicious'</pre>

2. Clone this repository
<pre> git clone git://github.com/tudorconstantin/Mojolicious-Boilerplate.git</pre>

3. cd into project directory
<pre>cd Mojolicious-Boilerplate</pre>

4. Start the app for development
<pre>morbo script/boilerplate</pre>

5. Point your browser at http://127.0.0.1:3000

##Nice to Have Stuff



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
