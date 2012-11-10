desc 'Build presentation'
task :build => ['output/images'] do
  sh %{slideshow --h2 --takahashi --output output --template deck.js presentation.text}
end

file 'output/images' do
  sh %{cp -r images output/}
end

task :default => :build
