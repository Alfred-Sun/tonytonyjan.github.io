set :site_url, 'http://tonytonyjan.net'
set :site_author, '大兜, 簡煒航, tonytonyjan, Jian Weihang'

set :markdown_engine, :kramdown
set :markdown, input: :GFM
set :time_zone, 'Taipei'

page 'feed.xml', layout: false

activate :i18n, mount_at_root: :'zh-TW'
activate :blog do |blog|
  blog.layout   = 'blog'
  blog.sources  = 'posts/{year}-{month}-{day}-{title}.html'
  blog.paginate = true
  blog.summary_separator = /<!-- more -->/
  blog.summary_length    = 150
end
activate :directory_indexes

helpers do
 def condense str
  str.gsub(/[\s\n]+/, ' ') if str
 end
end