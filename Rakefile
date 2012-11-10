desc 'Build presentation'
task :build do
  sh %{slideshow --h2 --takahashi --template deck.js presentation.text}
end

task :default => :build
