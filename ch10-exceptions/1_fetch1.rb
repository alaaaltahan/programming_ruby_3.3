require "open-uri"

file_name = "index.xhtml"
URI.open("https://pragprog.com/news/#{file_name}")do|web_page|
  output = File.open(file_name, "w")
  begin
    while(line = web_page.gets)
      output.puts line
    end
    output.close
  rescue StandardError
    $stderr.warn "failed to download #{file_name}"
  ensure
    output.close
    File.delete(file_name)
    raise
  end
end  