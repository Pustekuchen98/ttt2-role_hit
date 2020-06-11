CreateConVar("ttt2_hitman_target_credit_bonus", 1, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_hitman_target_chatreveal", 0, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_hitman_target_can_be_spy", 0, {FCVAR_ARCHIVE, FCVAR_NOTIFY})

hook.Add("TTTUlxDynamicRCVars", "ttt2_ulx_dynamic_hitman_convars", function(tbl)
	tbl[ROLE_HITMAN] = tbl[ROLE_HITMAN] or {}

	table.insert(tbl[ROLE_HITMAN], {
		cvar = "ttt2_hitman_target_credit_bonus",
		slider = true,
		min = 0,
		max = 10,
		decimal = 0,
		desc = "ttt2_hitman_target_credit_bonus (def. 1)"
	})

	table.insert(tbl[ROLE_HITMAN], {
		cvar = "ttt2_hitman_target_chatreveal",
		checkbox = true,
		desc = "ttt2_hitman_target_chatreveal (def. 0)"
	})
	
	table.insert(tbl[ROLE_HITMAN], {
		cvar = "ttt2_hitman_target_can_be_spy",
		checkbox = true,
		desc = "ttt2_hitman_target_can_be_spy (def. 0)"
	})
end)
