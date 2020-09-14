Dir.mkdir 'utf' unless Dir.exists? 'utf'

def iconv(fn)
  `iconv -f WINDOWS-1251 -t UTF-8 -o utf/#{fn} #{fn}`
end
  
Dir.children('.').each do |f|
  iconv f if File.file? f
end
