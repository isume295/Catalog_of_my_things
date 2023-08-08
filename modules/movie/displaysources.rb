module DisplaySources
  def display_all_sources
    @sources.each_with_index do |source, index|
      puts "#{index}) Source Name: #{source.name}"
    end
  end
end
