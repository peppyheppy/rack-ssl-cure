Rack::SSL sounded great, right? But now you have customers who are forced to use https and you may be
experiencing issues from slows pages to redirect loops. The problem is that Rack::SSL sets a header that
the browser stores for a year and causes the client to auto redirect to https independent of the app or
the webserver configuration.

Read more here: 
http://tools.ietf.org/html/draft-hodges-strict-transport-sec-02#page-12

All you have to do is:

Remove your Rack::SSL gem from the Gemfile and any configuration file including your config.ru if needed.

Add the following to the Gemfile:

      gem 'rack-ssl-cure', require: 'rack/ssl_cure'

Add the following to your config.ru:

      run Rack::SSLCure

Check any other configs. Deploy and watch your site speed up, and your customers smile.

TODO:
  Write the one test. :)
