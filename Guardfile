guard 'nanoc' do
  watch('nanoc.yaml')
  watch('Rules')
  watch(%r{^(content|layouts|lib)/.*$})
end

# Guard will install/remove gems
# When there's a change to `Gemfile`
guard :bundler do
  watch('Gemfile')
end

# Guard will reload browser
# When there's change to `output/` directory
guard 'livereload' do
    watch(%r{output/.*$})
end
