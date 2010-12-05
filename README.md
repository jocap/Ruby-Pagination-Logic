# ruby_pagination_logic

## Installation

    $ sudo gem install ruby_pagination_logic

## Example use

    # With DataMapper and Sinatra
    # @app.rb
    [...]
    require "pagination.rb"
    get '/page/:page' do |page|
      @page = page.to_i
      limit = 5
      offset = RPL::paginate @page, limit
      
      @post = Post.all :limit => limit, :offset => offset, :order => 'date'
      
      haml :posts
    end
    
    # @views/posts.haml
    %section{:class => "articles"}
      - @post.reverse.each do |post|
        %article
          %h2
            =post.title
          = post.date
          %div
            = post.text
    %a{:href => "/page/#{RPL::next @page}"}
      Next

**Author**: John Ankarström.
[Source.](http://github.com/jocap/Ruby-Pagination-Logic)

## Contributing to ruby_pagination_logic
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## License

Based on [CC-BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/).

You must give attribution in source code, although not on website (if you're using it for your website). If you make any modifications, please publish it under the this license, CC-BY-SA 3.0, and give attribution.