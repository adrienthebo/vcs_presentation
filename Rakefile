desc 'Build presentation'
task :build do
  sh %{slideshow --h2 --takahashi --output output --template deck.js presentation.text}
end

task :default => :build
