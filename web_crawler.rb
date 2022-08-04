require 'optimist'
require 'mechanize'
require 'colorize'
def banner
puts "db   d8b   db d88888b d8888b.    .o88b. d8888b.  .d8b.  db   d8b   db db      d88888b d8888b. ".red.bold
puts "88   I8I   88 88'     88  `8D   d8P  Y8 88  `8D d8' `8b 88   I8I   88 88      88'     88  `8D ".red.bold
puts "88   I8I   88 88ooooo 88oooY'   8P      88oobY' 88ooo88 88   I8I   88 88      88ooooo 88oobY' ".red.bold
puts "Y8   I8I   88 88~~~~~ 88~~~b.   8b      88`8b   88~~~88 Y8   I8I   88 88      88~~~~~ 88`8b   ".red.bold
puts "`8b d8'8b d8' 88.     88   8D   Y8b  d8 88 `88. 88   88 `8b d8'8b d8' 88booo. 88.     88 `88. ".red.bold
puts " `8b8' `8d8'  Y88888P Y8888P'    `Y88P' 88   YD YP   YP  `8b8' `8d8'  Y88888P Y88888P 88   YD ".red.bold
puts
puts "                     Think like a HACKER to protect your organization     ".red.bold
puts 
puts "                             Written by Mohammad Talha Iqbal ".green.bold
puts 
end
    def crawl
    opts = Optimist::options do
    opt :url, "url of web", type: :string, required: true
    opt :file, "file name", type: :string, required: false
     end
    
    fiel=opts[:url]
    
    mechanize = Mechanize.new
    page = mechanize.get(opts[:url])
     
    if opts[:file] 
     file=File.new(opts[:file],'a')
     file.puts fiel
     file.puts"----------------------------------------------------------------------------------------------"
     file.puts"                                                URLS".blue.bold
     file.puts"----------------------------------------------------------------------------------------------"
     page.search('a').each do |link|
     file.puts ""
     file.puts "---------------------------#{link.text}--------------------------------".green.bold
     file.puts link['href']
     file.puts ""
     end
     file.close
    else 
     mechanize = Mechanize.new
     page = mechanize.get(opts[:url])
     puts"----------------------------------------------crawler-----------------------------------------".blue.bold
     puts"----------------------------------------------------------------------------------------------"
     puts"                                                URLS".blue.bold
     puts"----------------------------------------------------------------------------------------------"
     page.search('a').each do |link|
     puts ""
     puts "---------------------------#{link.text}--------------------------------".green.bold
     puts link['href']
     puts ""
      end
    
    end
   end
 banner
 crawl
 
