# NoCMS News

## What's this?

This is a very simple Rails engine with some models, controllers and views to manage multi-language information about news on a site.

## How do I install it?

Right now there's no proper gem, although we have a couple of projects making extensive use of it.

To install it just put the repo in your Gemfile:

```ruby
gem "nocms-news", git: 'git@github.com:simplelogica/nocms-news.git'
```

And then import all the migrations:

```
rake no_cms_news:install:migrations
```

Optionally, you may be interested on adding this engine routes to your app. You just have to mount the engine in your routes.rb file [just like any other standard engine][http://edgeguides.rubyonrails.org/engines.html#highlighter_95949].

```ruby
  mount NoCms::News::Engine => "/news/"
```

If you prefer not to mount the whole engine just take a look at the config/routes.rb file of the engine to see which controllers and actions are used.

## Which controllers and models offers?

### Models

We have two models:

  - `NoCms::News::Item` with a title, a slug and a body. It also has a draft boolean attribute.
  - `NoCms::News::Category` with a title.

`Item` and `Category` are linked through a `has_and_belongs_to_many` relationship.

Both models are translated with Globalize.

### Controllers / Views

It has just one controller.

  - `NoCms::News::NewsController` that shows the index and details of an `Item`.

## Where is the admin interface?

`nocms-news` is a gem with the minimum dependencies and that includes the admin interface.

Main idea is that this gem can be used in a project with a Rails Admin, an Active Admin or a home made admin.

As soon as we started using this gem we started our own admin interface, which is contained in another gem [nocms-admin-news](https://github.com/simplelogica/nocms-admin-news) and you can use it.

If your project already has another standard admin interface such as Rails Admin and you manage to embed nocms-news on it, please, let us know and we will make a note here giving you full credit for the development :)


