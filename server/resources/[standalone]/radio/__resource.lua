resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_01_CLASS_ROCK" { url = "https://19073.live.streamtheworld.com/SLAM_MP3_SC?", volume = 0.6, name = "SLAM!" } -- lost santos rock (Slam!)
supersede_radio "RADIO_02_POP" { url = "http://20873.live.streamtheworld.com/WEB10_MP3_SC?", volume = 0.6, name = "SLAM! - Non-Stop" } -- Non-stop (Slam! Non-stop)
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "http://18973.live.streamtheworld.com/RADIO538.mp3", volume = 0.6, name = "538" } --  Radio Los Santos (538)
supersede_radio "RADIO_04_PUNK" { url = "http://playerservices.streamtheworld.com/api/livestream-redirect/TLPSTR09.mp3", volume = 0.6, name = "538 Non-Stop" } -- Channel X (538 Non-stop)
supersede_radio "RADIO_06_COUNTRY" { url = "https://icecast-qmusicnl-cdp.triple-it.nl/Qmusic_nl_live_96.mp3", volume = 0.6, name = "Q-Music" } -- Rebel Radio (Q-music)
supersede_radio "RADIO_07_DANCE_01" { url = "http://icecast-qmusicnl-cdp.triple-it.nl/Qmusic_nl_nonstop_96.mp3", volume = 0.6, name = "Q-Music - Non-Stop" } -- Soulwax FM (Q-music Non-stop)
supersede_radio "RADIO_08_MEXICAN" { url = "http://playerservices.streamtheworld.com/api/livestream-redirect/SKYRADIO.mp3", volume = 0.6, name = "Skyradio" } -- East Los FM (Skyradio)
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "https://media.rtvnoord.nl/icecast/rtvnoord/radio?.mp3", volume = 0.6, name = "RTV Radio Noord" } -- West coast classics (Radio Noord)
supersede_radio "RADIO_11_TALK_02" { url = "http://groningenrp.nl", volume = 0.6, name = "Suggesties?" } -- Blain country radio (SOON)
supersede_radio "RADIO_12_REGGAE" { url = "http://groningenrp.nl", volume = 0.6, name = "Suggesties?" } -- Blue Ark (SOON)
supersede_radio "RADIO_13_JAZZ" { url = "http://stream.100p.nl/100pctnl.mp3", volume = 0.6, name = "100%NL" } -- WorldWide FM (100% NL)
supersede_radio "RADIO_14_DANCE_02" { url = "http://19993.live.streamtheworld.com/RADIO10.mp3 ", volume = 0.6, name = "Radio 10" } -- FyLo FM (Radio 10)
supersede_radio "RADIO_15_MOTOWN" { url = "http://icecast.omroep.nl/funx-bb-mp3", volume = 0.6, name = "NPO FunX" } -- LowDown (NPO FUNX)
supersede_radio "RADIO_20_THELAB" { url = "http://icecast.omroep.nl/radio5-bb-mp3", volume = 0.6, name = "NPO Radio 5" } -- The lab (NPO radio 5)
supersede_radio "RADIO_16_SILVERLAKE" { url = "http://icecast.omroep.nl/radio4-bb-mp3", volume = 0.6, name = "NPO Radio 4" } -- Radio Mirror (NPO Radio 4)
supersede_radio "RADIO_17_FUNK" { url = " 	http://icecast.omroep.nl/3fm-bb-mp3", volume = 0.6, name = "NPO 3FM" } -- Space 103.2 (NPO 3FM)
supersede_radio "RADIO_18_90S_ROCK" { url = "http://icecast.omroep.nl/radio2-bb-mp3", volume = 0.6, name = "NPO Radio 2" } -- Vinewood boulevard radio (NPO Radio 2)
supersede_radio "RADIO_21_DLC_XM17" { url = "http://icecast.omroep.nl/radio1-bb-mp3", volume = 0.6, name = "NPO Radio 1" } -- Blonded Los santos 97.8FM (NPO Radio 1)
supersede_radio "RADIO_22_DLC_BATTLE_MIX1_RADIO" { url = "http://78.129.193.82:35777/stream", volume = 1.0, name = "Hertogdam Radio" } -- Los Santos Underground Radio (GroningenRP Radio SOON)

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
