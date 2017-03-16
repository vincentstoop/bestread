# BestRead
## Online Book Club

Hackathon project during first week of Codaisseur Acadamy. This project was meant to teach us how a one-to-many relationship works in RoR.

### Database structure
1. Author
  * first_name:string
  * prefix:string
  * last_name:string
  * author_img:string
  * bio:text
  * quotes:text

2. Book
  * title:string
  * year:integer
  * cover_img:string
  * desc:text
  * pages:integer
  * isbn:string
  * author:references

### Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed. This project uses [Rails 5.0.1](https://rubygems.org/gems/rails/versions/5.0.1)

```bash
git clone git@github.com:vincentstoop/bestread.git
cd bestread
bundle install
rails db:create db:migrate db:seed
rails server
```
