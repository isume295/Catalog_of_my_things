require_relative 'app_salim'

class Main
  def initialize
    @app = App.new
    prompt
  end
