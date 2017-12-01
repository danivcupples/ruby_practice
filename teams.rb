#define team class. attributes: name, seed
class Teams
  attr_accessor :name, :seed
  def initialize (name, seed)
    @name = name
    @seed = seed
  end
end

#declare empty hash of teams
@pool = {}

#define method create
def create_team
  completion = false
  #request input
  puts "Enter team information, type 'done' when finished."
  #loop to create enter new Teams
  while completion == false
    #get and save name input
    print "Team Name: "
    name = gets.chomp
    #check that the user is not done
    if name == "done"
      completion = true
      break
    end
    #get and save seed input
    print "Seed: "
    seed = gets.chomp.to_i
    #create & seed new teams
    new_team = Teams.new(name, seed)
    #pushes to hash with seed: team pairs
    @pool[seed] = name
    puts "Team saved!"
  end
  puts @pool
  menu
end

#define method list
def list_teams
  #sort teams by seed, highest to lowest
  puts "THE RANKINGS"
  puts "~~~~~~~~~~~~~"
  ranking = @pool.sort
  #iterates over the array and puts rank and team name
  ranking.each do |seed, name|
    puts "#{seed}: #{name}"
  end
  puts "\n"
  menu
end

#define method matchup
def matchup_teams
  ranking = @pool.sort
  matchups = []
  puts "THE MATCHUPS"
  puts "~~~~~~~~~~~~"
  #determine even or odd number of teams
  if ranking.length % 2 != 0
    #if odd, ignore highest seed
    highest_seed = ranking.shift
    puts "#{highest_seed[0]}: #{highest_seed[1]} have a bye"
  end
    #pair teams based on seed: highest with lowest, moving inward
  (ranking.length/2).times do |seed, name|
    higher = ranking.shift
    lower = ranking.pop
    matchups.push("#{higher[0]}: #{higher[1]} vs. #{lower[0]}: #{lower[1]}")
  end
  matchups.each do |pair|
    puts pair + "\n"
  end
  puts "\n"
  menu
end

#define method menu
def menu
  puts "What would you like to do?"
  puts "1. Enter teams"
  puts "2. List teams"
  puts "3. List matchups"
  puts "4. Exit program"

  choice = gets.chomp.to_i

  case choice

  #call create
  when 1
    system "clear"
    create_team
  #call list
  when 2
    system "clear"
    list_teams
  #call matchups
  when 3
    system "clear"
    matchup_teams
  #exit program
  when 4
    puts "Thank you and goodbye!"
  else
    system "clear"
    puts "Try again"
  end
end

menu
