local CopBaseModule = {}

local sh_spas12_r870 = StreamHeist and "spas12" or "r870"
local sh_spas12_benelli = StreamHeist and "spas12" or "benelli"
local sh_mossberg_r870 = StreamHeist and "mossberg" or "r870"

local variety_security = {
	"c45",
	"c45",
	"mp5",
	"mp5",
	"r870"
}
local variety_security_heavy = {
	"mp5",
	"r870"
}
local variety_security_hox = {
	"m4",
	"m4",
	sh_spas12_r870
}
local variety_security_ranc = {
	"raging_bull",
	"raging_bull",
	"m4",
	sh_spas12_r870
}
local variety_fbi_office = {
	"c45",
	"raging_bull",
	"raging_bull",
	"m4",
	sh_spas12_r870
}
local variety_murkywater = {
	"scar_murky",
	"scar_murky",
	sh_spas12_benelli,
	"ump"
}

local variety_gangsters = {
	"mac11",
	"mac11",
	sh_mossberg_r870,
	"ak47"
}
local variety_gangsters_heavy = {
	"raging_bull",
	"ak47",
	"ak47",
	sh_mossberg_r870
}
local variety_gangsters_man = Global.level_data and Global.level_data.level_id == "man" and variety_fbi_office or variety_gangsters
local variety_bikers = {
	"c45",
	"r870",
	sh_mossberg_r870,
	"m4"
}
local variety_triads = {
	"raging_bull",
	"mp5",
	"mp5",
	"r870"
}
local variety_triads_pent = {
	"raging_bull",
	"m4",
	"m4",
	sh_spas12_r870
}

local weapon_mapping = {
	--	bikers
	[Idstring("units/payday2/characters/ene_biker_1/ene_biker_1"):key()] = variety_bikers,
	[Idstring("units/payday2/characters/ene_biker_2/ene_biker_2"):key()] = variety_bikers,
	[Idstring("units/payday2/characters/ene_biker_3/ene_biker_3"):key()] = variety_bikers,
	[Idstring("units/payday2/characters/ene_biker_4/ene_biker_4"):key()] = variety_bikers,
	[Idstring("units/pd2_dlc_born/characters/ene_biker_female_1/ene_biker_female_1"):key()] = variety_bikers,
	[Idstring("units/pd2_dlc_born/characters/ene_biker_female_2/ene_biker_female_2"):key()] = variety_bikers,
	[Idstring("units/pd2_dlc_born/characters/ene_biker_female_3/ene_biker_female_3"):key()] = variety_bikers,

	--	triads
	[Idstring("units/pd2_dlc_chas/characters/ene_male_triad_gang_1/ene_male_triad_gang_1"):key()] = variety_triads,
	[Idstring("units/pd2_dlc_chas/characters/ene_male_triad_gang_2/ene_male_triad_gang_2"):key()] = variety_triads,
	[Idstring("units/pd2_dlc_chas/characters/ene_male_triad_gang_3/ene_male_triad_gang_3"):key()] = variety_triads,
	[Idstring("units/pd2_dlc_chas/characters/ene_male_triad_gang_4/ene_male_triad_gang_4"):key()] = variety_triads,
	[Idstring("units/pd2_dlc_chas/characters/ene_male_triad_gang_5/ene_male_triad_gang_5"):key()] = variety_triads,
	[Idstring("units/pd2_dlc_chca/characters/ene_triad_cruise_1/ene_triad_cruise_1"):key()] = variety_triads,
	[Idstring("units/pd2_dlc_chca/characters/ene_triad_cruise_2/ene_triad_cruise_2"):key()] = variety_triads,
	[Idstring("units/pd2_dlc_chca/characters/ene_triad_cruise_3/ene_triad_cruise_3"):key()] = variety_triads,

	[Idstring("units/pd2_dlc_pent/characters/ene_male_security_penthouse_1/ene_male_security_penthouse_1"):key()] = variety_triads_pent,
	[Idstring("units/pd2_dlc_pent/characters/ene_male_security_penthouse_2/ene_male_security_penthouse_2"):key()] = variety_triads_pent,
	[Idstring("units/pd2_dlc_pent/characters/ene_male_triad_penthouse_1/ene_male_triad_penthouse_1"):key()] = variety_triads_pent,
	[Idstring("units/pd2_dlc_pent/characters/ene_male_triad_penthouse_2/ene_male_triad_penthouse_2"):key()] = variety_triads_pent,
	[Idstring("units/pd2_dlc_pent/characters/ene_male_triad_penthouse_3/ene_male_triad_penthouse_3"):key()] = variety_triads_pent,
	[Idstring("units/pd2_dlc_pent/characters/ene_male_triad_penthouse_4/ene_male_triad_penthouse_4"):key()] = variety_triads_pent,

	--	midland ranch guys
	[Idstring("units/pd2_dlc_ranc/characters/ene_male_ranc_security_1/ene_male_ranc_security_1"):key()] = variety_security_ranc,
	[Idstring("units/pd2_dlc_ranc/characters/ene_male_ranc_security_2/ene_male_ranc_security_2"):key()] = variety_security_ranc,
	[Idstring("units/pd2_dlc_ranc/characters/ene_male_ranchmanager_1/ene_male_ranchmanager_1"):key()] = variety_security_ranc,

	--	"heavy" gangsters (hotline miami, scarface mansion, and border crossing)
	[Idstring("units/payday2/characters/ene_gang_mobster_1/ene_gang_mobster_1"):key()] = variety_gangsters_heavy,
	[Idstring("units/payday2/characters/ene_gang_mobster_2/ene_gang_mobster_2"):key()] = variety_gangsters_heavy,
	[Idstring("units/payday2/characters/ene_gang_mobster_3/ene_gang_mobster_3"):key()] = variety_gangsters_heavy,
	[Idstring("units/payday2/characters/ene_gang_mobster_4/ene_gang_mobster_4"):key()] = variety_gangsters_heavy,
	[Idstring("units/pd2_dlc_friend/characters/ene_security_manager/ene_security_manager"):key()] = variety_gangsters_heavy,
	[Idstring("units/pd2_dlc_friend/characters/ene_bolivian_thug_outdoor_01/ene_bolivian_thug_outdoor_01"):key()] = variety_gangsters_heavy,
	[Idstring("units/pd2_dlc_friend/characters/ene_bolivian_thug_outdoor_02/ene_bolivian_thug_outdoor_02"):key()] = variety_gangsters_heavy,
	[Idstring("units/pd2_dlc_friend/characters/ene_thug_indoor_01/ene_thug_indoor_01"):key()] = variety_gangsters_heavy,
	[Idstring("units/pd2_dlc_friend/characters/ene_thug_indoor_02/ene_thug_indoor_02"):key()] = variety_gangsters_heavy,
	[Idstring("units/pd2_dlc_friend/characters/ene_thug_indoor_03/ene_thug_indoor_03"):key()] = variety_gangsters_heavy,
	[Idstring("units/pd2_dlc_friend/characters/ene_thug_indoor_04/ene_thug_indoor_04"):key()] = variety_gangsters_heavy,
	[Idstring("units/pd2_dlc_mex/characters/ene_mex_security_guard_3/ene_mex_security_guard_3"):key()] = variety_gangsters_heavy,
	[Idstring("units/pd2_dlc_mex/characters/ene_mex_thug_outdoor_02/ene_mex_thug_outdoor_02"):key()] = variety_gangsters_heavy,

	--	cobras (undercover fbi agents on, well, undercover)
	[Idstring("units/payday2/characters/ene_gang_black_1/ene_gang_black_1"):key()] = variety_gangsters_man,
	[Idstring("units/payday2/characters/ene_gang_black_2/ene_gang_black_2"):key()] = variety_gangsters_man,
	[Idstring("units/payday2/characters/ene_gang_black_3/ene_gang_black_3"):key()] = variety_gangsters_man,
	[Idstring("units/payday2/characters/ene_gang_black_4/ene_gang_black_4"):key()] = variety_gangsters_man,

	--	misc. other gangsters
	[Idstring("units/payday2/characters/ene_gang_mexican_1/ene_gang_mexican_1"):key()] = variety_gangsters,
	[Idstring("units/payday2/characters/ene_gang_mexican_2/ene_gang_mexican_2"):key()] = variety_gangsters,
	[Idstring("units/payday2/characters/ene_gang_mexican_3/ene_gang_mexican_3"):key()] = variety_gangsters,
	[Idstring("units/payday2/characters/ene_gang_mexican_4/ene_gang_mexican_4"):key()] = variety_gangsters,
	[Idstring("units/payday2/characters/ene_gang_russian_1/ene_gang_russian_1"):key()] = variety_gangsters,
	[Idstring("units/payday2/characters/ene_gang_russian_2/ene_gang_russian_2"):key()] = variety_gangsters,
	[Idstring("units/payday2/characters/ene_gang_russian_3/ene_gang_russian_3"):key()] = variety_gangsters,
	[Idstring("units/payday2/characters/ene_gang_russian_4/ene_gang_russian_4"):key()] = variety_gangsters,
	[Idstring("units/payday2/characters/ene_gang_russian_5/ene_gang_russian_5"):key()] = variety_gangsters,

	--	security guards
	[Idstring("units/payday2/characters/ene_security_1/ene_security_1"):key()] = variety_security,
	[Idstring("units/payday2/characters/ene_security_2/ene_security_2"):key()] = variety_security,
	[Idstring("units/payday2/characters/ene_security_4/ene_security_4"):key()] = variety_security,
	[Idstring("units/payday2/characters/ene_security_5/ene_security_5"):key()] = variety_security,
	[Idstring("units/payday2/characters/ene_security_6/ene_security_6"):key()] = variety_security,
	[Idstring("units/payday2/characters/ene_security_8/ene_security_8"):key()] = variety_security,
	[Idstring("units/payday2/characters/ene_secret_service_1/ene_secret_service_1"):key()] = variety_security,
	[Idstring("units/payday2/characters/ene_secret_service_2/ene_secret_service_2"):key()] = variety_security,
	[Idstring("units/pd2_dlc_chca/characters/ene_security_cruise_1/ene_security_cruise_1"):key()] = variety_security,
	[Idstring("units/pd2_dlc_chca/characters/ene_security_cruise_2/ene_security_cruise_2"):key()] = variety_security,
	[Idstring("units/pd2_dlc_chca/characters/ene_security_cruise_3/ene_security_cruise_3"):key()] = variety_security,
	[Idstring("units/pd2_dlc_bex/characters/ene_bex_security_01/ene_bex_security_01"):key()] = variety_security,
	[Idstring("units/pd2_dlc_bex/characters/ene_bex_security_02/ene_bex_security_02"):key()] = variety_security,
	[Idstring("units/pd2_dlc_bex/characters/ene_bex_security_suit_01/ene_bex_security_suit_01"):key()] = variety_security,
	[Idstring("units/pd2_dlc_bex/characters/ene_bex_security_suit_02/ene_bex_security_suit_02"):key()] = variety_security,
	[Idstring("units/pd2_dlc_arena/characters/ene_guard_security_heavy_1/ene_guard_security_heavy_1"):key()] = variety_security,
	[Idstring("units/pd2_dlc_arena/characters/ene_guard_security_heavy_2/ene_guard_security_heavy_2"):key()] = variety_security,

	[Idstring("units/payday2/characters/ene_security_3/ene_security_3"):key()] = variety_security_heavy,
	[Idstring("units/payday2/characters/ene_security_7/ene_security_7"):key()] = variety_security_heavy,
	[Idstring("units/pd2_dlc1/characters/ene_security_gensec_1/ene_security_gensec_1"):key()] = variety_security_heavy,
	[Idstring("units/pd2_dlc1/characters/ene_security_gensec_2/ene_security_gensec_2"):key()] = variety_security_heavy,
	[Idstring("units/pd2_dlc_casino/characters/ene_secret_service_1_casino/ene_secret_service_1_casino"):key()] = variety_security_heavy,
	[Idstring("units/pd2_dlc_bex/characters/ene_bex_security_03/ene_bex_security_03"):key()] = variety_security_heavy,
	[Idstring("units/pd2_dlc_bex/characters/ene_bex_security_suit_03/ene_bex_security_suit_03"):key()] = variety_security_heavy,

	--	hoxout day 1 guards
	[Idstring("units/payday2/characters/ene_prisonguard_male_1/ene_prisonguard_male_1"):key()] = variety_security_hox,
	[Idstring("units/payday2/characters/ene_prisonguard_female_1/ene_prisonguard_female_1"):key()] = variety_security_hox,

	--	fbi office agents (hoxout day 2, undercover)
	[Idstring("units/payday2/characters/ene_fbi_office_1/ene_fbi_office_1"):key()] = variety_fbi_office,
	[Idstring("units/payday2/characters/ene_fbi_office_2/ene_fbi_office_2"):key()] = variety_fbi_office,
	[Idstring("units/payday2/characters/ene_fbi_office_3/ene_fbi_office_3"):key()] = variety_fbi_office,
	[Idstring("units/payday2/characters/ene_fbi_office_4/ene_fbi_office_4"):key()] = variety_fbi_office,
	[Idstring("units/payday2/characters/ene_fbi_female_1/ene_fbi_female_1"):key()] = variety_fbi_office,
	[Idstring("units/payday2/characters/ene_fbi_female_2/ene_fbi_female_2"):key()] = variety_fbi_office,
	[Idstring("units/payday2/characters/ene_fbi_female_3/ene_fbi_female_3"):key()] = variety_fbi_office,
	[Idstring("units/payday2/characters/ene_fbi_female_4/ene_fbi_female_4"):key()] = variety_fbi_office,

	-- murkywater
	[Idstring("units/payday2/characters/ene_murkywater_1/ene_murkywater_1"):key()] = variety_murkywater,
	[Idstring("units/payday2/characters/ene_murkywater_2/ene_murkywater_2"):key()] = variety_murkywater,
	[Idstring("units/pd2_dlc_berry/characters/ene_murkywater_no_light/ene_murkywater_no_light"):key()] = variety_murkywater,
	[Idstring("units/pd2_dlc_des/characters/ene_murkywater_not_security_1/ene_murkywater_not_security_1"):key()] = variety_murkywater,
	[Idstring("units/pd2_dlc_des/characters/ene_murkywater_not_security_2/ene_murkywater_not_security_2"):key()] = variety_murkywater,
	[Idstring("units/pd2_dlc_des/characters/ene_murkywater_no_light_not_security/ene_murkywater_no_light_not_security"):key()] = variety_murkywater,
	[Idstring("units/pd2_dlc_vit/characters/ene_murkywater_secret_service/ene_murkywater_secret_service"):key()] = variety_murkywater,

	--	zombie taser
	[Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"):key()] = "m4_yellow"
}


local difficulty_index = tweak_data:difficulty_to_index(Global.game_settings and Global.game_settings.difficulty or "normal")

function CopBaseModule.weapon_mapping_streamheist()
	local to_append = {
		[Idstring("units/pd2_dlc_bex/characters/ene_policia_01/ene_policia_01"):key()] = "mp5",
		[Idstring("units/pd2_dlc_bex/characters/ene_policia_02/ene_policia_02"):key()] = "r870"
	}

	for unit, swap in pairs(to_append) do
		weapon_mapping[unit] = swap
	end

	return weapon_mapping
end

function CopBaseModule.weapon_mapping_vanilla()
	local fbi_rifle = difficulty_index > 3 and "m4" or "mp5"
	local city_rifle = difficulty_index > 5 and "g36" or "m4"
	local zeal_rifle = difficulty_index > 7 and "mp5" or fbi_rifle

	local to_append = {
		[Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3"):key()] = "r870",
		[Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_ak47_ass/ene_akan_cs_cop_ak47_ass"):key()] = fbi_rifle,
		[Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_ak47_ass/ene_akan_cs_swat_ak47_ass"):key()] = zeal_rifle,
		[Idstring("units/pd2_dlc_hvh/characters/ene_fbi_hvh_3/ene_fbi_hvh_3"):key()] = "r870",
		[Idstring("units/pd2_dlc_bph/characters/ene_murkywater_light/ene_murkywater_light"):key()] = zeal_rifle,
		[Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_federale/ene_swat_policia_federale"):key()] = zeal_rifle,

		[Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_ak47_ass/ene_akan_fbi_swat_ak47_ass"):key()] = city_rifle,
		[Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass"):key()] = "m4",
		[Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36"):key()] = city_rifle,
		[Idstring("units/pd2_dlc_hvh/characters/ene_fbi_swat_hvh_1/ene_fbi_swat_hvh_1"):key()] = city_rifle,
		[Idstring("units/pd2_dlc_hvh/characters/ene_fbi_heavy_hvh_1/ene_fbi_heavy_hvh_1"):key()] = city_rifle,
		[Idstring("units/pd2_dlc_bph/characters/ene_murkywater_heavy_g36/ene_murkywater_heavy_g36"):key()] = city_rifle,
		[Idstring("units/pd2_dlc_bex/characters/ene_swat_heavy_policia_federale_fbi_g36/ene_swat_heavy_policia_federale_fbi_g36"):key()] = city_rifle,

		[Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"):key()] = "m4_yellow"
	}

	for unit, swap in pairs(to_append) do
		weapon_mapping[unit] = swap
	end

	return weapon_mapping
end

CopBaseModule.weapon_mapping_beta_streamheist = CopBaseModule.weapon_mapping_streamheist
CopBaseModule.weapon_mapping_beta_vanilla = CopBaseModule.weapon_mapping_vanilla

function CopBaseModule.tweak_mapping_streamheist()
	return {
		swaps = {},
		override = {}
	}
end

function CopBaseModule.tweak_mapping_vanilla()
	local light = difficulty_index > 7 and "swat" or "fbi_swat" 
	local heavy = difficulty_index > 7 and "heavy_swat" or "fbi_heavy_swat"
	local hrt = "fbi"

	return {
		swaps = {
			swat = light,
			fbi_swat = light,
			city_swat = light,
			heavy_swat = heavy,
			fbi_heavy_swat = heavy,
			cop = hrt,
			fbi = hrt
		},
		override = {
			[Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3"):key()] = hrt,
			[Idstring("units/pd2_dlc_hvh/characters/ene_fbi_hvh_3/ene_fbi_hvh_3"):key()] = hrt,
			[Idstring("units/pd2_dlc_bph/characters/ene_murkywater_light/ene_murkywater_light"):key()] = hrt,
			[Idstring("units/pd2_dlc_bph/characters/ene_murkywater_light_r870/ene_murkywater_light_r870"):key()] = hrt,
			[Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_federale/ene_swat_policia_federale"):key()] = hrt,
			[Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_federale_r870/ene_swat_policia_federale_r870"):key()] = hrt
		}
	}
end

CopBaseModule.tweak_mapping_beta_streamheist = CopBaseModule.tweak_mapping_streamheist
CopBaseModule.tweak_mapping_beta_vanilla = CopBaseModule.tweak_mapping_vanilla

return CopBaseModule