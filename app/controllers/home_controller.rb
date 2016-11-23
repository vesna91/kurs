class HomeController < ApplicationController

  def index
  #  @developers=[
      #'Neldin',
      #'Tarik',
      #'Aida',
      #'Selma'
    #]
    #izvuci sve proizvode i ispisati ih na view
    #@products=Product.all
    developers = [
      Developer.new('Ivan','Kovac',['ruby','php']),
      Developer.new('Ivan2','Kovac2',['rails','php']),
      Developer.new('Ivan3','Kovac3',['ruby','php'])
    ]

    @devs=  []
    #ispitivanje da li taj param postoji blank ispituje da li je nil, false, prazni navodnici
    if params[:filter].present?
     developers.map do |dev|
       @devs << dev if dev.has_skill?(params[:filter])
     end
    else
     @devs=developers
    end
  end


  def login
    puts params.inspect


    if params[:username] == 'ivan' && params[:password] == '1234'
      redirect_to root_path
    else
      redirect_to help_path
    end
  end

  def about
    developers = [
      Developer.new('Ivan','Kovac',['ruby','php']),
      Developer.new('Ivan2','Kovac2',['rails','php']),
      Developer.new('Ivan3','Kovac3',['ruby','php'])
    ]
#premapira jedan niz na drugi
    #@devs=developers.map do |dev|
      #id dev.first_name=='Ivan'
      #return dev
      #dev if dev.has_skill?(params[:filter])
      @devs=developers.select do |dev|
        dev if dev.has_skill?(params[:filter])
      end

    end


  def help
    puts params.inspect
    @page=params[:action].capitalize
    @filter=params[:filter]
    @sort=params[:sort]
  end

end
class Developer
  attr_accessor :first_name, :last_name, :skills
  def initialize(first_name, last_name,skills=[])
    @first_name, @last_name, @skills= first_name, last_name, skills
  end
  def  has_skill?(skill)
    skills.include?(skill)
  end
  def to_s
  "#{first_name}, #{last_name}"
  end


end
