anose = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
  retorno = {}
  dict.each do |str|
    coincidencias = 0
    if string.downcase.include?(str) 
      coincidencias = string.downcase.scan(str).count
    end
    if coincidencias > 0 
      retorno[str] = coincidencias
    end
  end
  puts retorno
  
end

substrings("Howdy partner, sit down! How's it going?", anose)