class Player

	def initialize(name: 'SomeName', board: :a_board)
		@name  = name
		@board = board
		@ships = [PatrolBoat.new, Submarine.new, Destroyer.new, Battleship.new, Carrier.new]
	end

	attr_reader :name, :board, :ships

	def shoot_at(opponent_board, at_coordinate)
		opponent_board.grid[at_coordinate].shoot!
	end

end