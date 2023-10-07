use starknet::ContractAddress;
use debug::PrintTrait;

#[derive(Component, Copy, Drop, Serde, SerdeLen)]
struct Moves {
    #[key]
    player: ContractAddress,
    opponent: ContractAddress,
    game_id: felt252,
    avatar_choice: felt252,
    move_one: u32,
    move_two: u32,
    move_three: u32,
    move_four: u32,
    move_five: u32,
    counter: u32,
    turn : bool,
}

#[derive(Component, Copy, Drop, Serde, SerdeLen)]
struct Board_state {
    #[key]
    game_id: felt252,
    a_1: felt252,
    a_2: felt252,
    a_3: felt252,
    b_1: felt252,
    b_2: felt252,
    b_3: felt252,
    c_1: felt252,
    c_2: felt252,
    c_3: felt252,
}

#[derive(Component, Copy, Drop, Serde, SerdeLen)]
struct Game {
    #[key]
    game_id: felt252,
    winner: felt252,
    player_one_: ContractAddress,
    player_two_: ContractAddress
}
 

// 0x188fe00c1036f16e54c8fdc1fe519a2ba71805823994912d687770bf4a84dee