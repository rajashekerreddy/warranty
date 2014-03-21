directory = ARGV.shift || Dir.pwd
$dont_get_into = ['.','..']
$allowed = {
			'Ruby' => '.rb', 
			'Ruby HTML Templates' => '.html.erb',
			'YAML' => '.yml',
			'RDoc' => '.rdoc',
			'HTML' => '.html',
			'Javascript' => '.js',
			'CSS' => '.css',
			'Sass' => '.scss',
			'CofeeScript' => '.coffee'
			}
$analytics = {}
def analyze(dir)
	Dir.new(dir).each do |file_name|
		
		if (! $dont_get_into.include? file_name) and 
			File.directory? dir + File::SEPARATOR + file_name 
				analyze dir + File::SEPARATOR + file_name 
		end
 
		$allowed.each do |file, extension|
			if file_name.end_with? extension
				$analytics[file] ||= 0
				$analytics[file] += 1
				break
			end
		end
 
	end
end
analyze directory
puts 'No files found that matches your creteria.' if $analytics.empty?
puts $analytics.map { |k,v| "#{k} : #{v} Files"  }.join "\n"
