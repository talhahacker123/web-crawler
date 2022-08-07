
# WeB Crawler
web crawler written in ruby.
## Description
This is ruby based WeB Crawler, which crawl all links from the web app.
## Requirements (Gems)
• colorize (0.8.1)

• optimist (3.0.1)

• mechanize (2.7.7)

## Installation

Firstly, Install gems by running below commands:

```
  sudo gem install colorize -v 0.8.1
```
```
  sudo gem install optimist -v 3.0.1 
```
```
  sudo gem install mechanize -v 2.7.7
```
 Now, git clone the project (WeB Crawler):

 ```
git clone https://github.com/talhahacker123/web-crawler.git
 ```   
## Usage/Examples

```ruby
cd web-crawler
```
To see help menu
```
ruby web_crawler.rb -h or --help
```
To crawl links on runtime:
```
ruby web_crawler.rb -u or --url http://example.com
```
To save results to file:
```
ruby web_crawler.rb --url http://example.com  -f file_name.txt
```

## Screenshots

![web_scraper](https://github.com/talhahacker123/web-crawler/blob/main/project1.png)

![web_scraper1](https://github.com/talhahacker123/web-crawler/blob/main/project2.png)



## Licence
GNU General Public License v3.0
Permissions of this strong copyleft license are conditioned on making available complete source code of licensed works and modifications, which include larger works using a licensed work, under the same license. Copyright and license notices must be preserved. Contributors provide an express grant of patent rights.
