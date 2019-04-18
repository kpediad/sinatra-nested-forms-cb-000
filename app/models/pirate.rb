class Pirate

  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize (params[:pirate])
    @name = params[:pirate][:name]
    @weight = params[:pirate][:weight]
    @height = params[:pirate][:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
