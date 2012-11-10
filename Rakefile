desc 'Build presentation'
task :build => ['output/images'] do
  sh %{slideshow --h2 --takahashi --output output --template deck.js presentation.text}
end

file 'output/images' do
  sh %{cp -r images output/}
end

require 'tmpdir'
desc 'Deploy to gh-pages'
task :deploy do

  Dir.mktmpdir do |tmp|
    commands = <<-EOS
      cp -r output #{tmp}/
      git checkout gh-pages
      cp -r #{tmp}/output/* .
      cp presentation.html index.html
      git add images
      git add index.html
      git commit -m 'Update'
      git push
      git checkout master
    EOS

    commands.split("\n").each {|ell| sh ell.strip}
  end
end

task :default => :build
