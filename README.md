# Middleman::Autometatags

This is a middleman extension that helps manage metatags.  It will make guesses pages on the page metadata and data/site.yml to set things correctly.

SEO gem for your Middleman apps.

Based on [meta-tags](https://github.com/kpumuk/meta-tags) Rails gem and the [middleman-meta-tags](https://github.com/tiste/middleman-meta-tags) middleman extension.


## Installation

Add this line to your middleman's Gemfile:

```ruby
gem 'middleman-autometatags'
```

## Usage

### Configuration

Edit `config.rb` and add:

```rb
activate :autometatags
```

### Create data/site.yml

This will look inside of data/site.yml file to find any site wide defaults.

For example

```yml
title: "Will Schenk"
twitter_author: "@wschenk"
```

### Title

```rb
set_meta_tags title: 'Relevant title'
title 'Relevant title'
```

### Description

```rb
set_meta_tags description: 'Powerful website full of best practices and keywords'
description 'Powerful website full of best practices and keywords'
```

### Keywords

```rb
set_meta_tags keywords: %w(some seo keywords).join(', ')
keywords %w(some seo keywords).join(', ')
```

## Display meta tags

Into your `<head></head>` tag:

```rb
auto_display_meta_tags
```

By default, there is a `|` as separator between title and website name.

You can modify it by adding: `separator: '&raquo;'`

## Autotagging

This will look inside of data/site.yml file to find any site wide defaults.
Then it looks the page meta data to attempt to display the following keys:

- MM `title` => META `site`
- MM `description` => META `description`
- MM `title` => `og:site_name`
- MM `twitter_card` (defaults to `summary_large_image`) => META `twitter:card`
- MM `title` => META `twitter:title`
- MM `publisher_twitter` => META `twitter:site`
- MM `twitter_author` => META `twitter:creator`
- MM `description` => META `twitter:description`
- MM `pull_image` => META `twitter:image:src`
- MM `title` => META `og:title`
- MM `description` => META `og:description`
- MM `pull_image` => META `og:image`

### Manually adding addition tags

Create a helper method inside of your config.rb, like so

```rb
helper do
  def my_tags
    set_meta_tags key => value
  end
end
```

And add it to the layouts and views that you need.


## Contributing

1. [Fork it](http://github.com/tiste/middleman-meta-tags/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
