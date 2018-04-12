/// @description
global.players = ds_grid_create(5,5);
global.enemies = ds_grid_create(5,5);
global.team = ds_list_create();
global.enemyteam = ds_list_create();

//Initialize the possible players into the players grid
player_init(players.player1,o_player1,"Player 1",100,10,10);
player_init(players.player2,o_player2,"Player 2",50,20,5);
player_init(players.player3,o_player3,"Player 3",200,5,20);

enemy_init(enemies.enemy1,o_enemy1,"Enemy 1",50,20,10);
enemy_init(enemies.enemy2,o_enemy2,"Enemy 2",100,10,5);

room_goto_next();