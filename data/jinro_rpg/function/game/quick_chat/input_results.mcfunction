#>jinro_rpg:game/quick_chat/input_results


##
  function #oh_my_dat:please
  scoreboard players reset @s Znsi.Quickchat.Trigger
   scoreboard players set @s Znsi.Page 3
  $data modify storage jinro_rpg: Dialog.Quickchat.Results set value {\
    "type": "minecraft:multi_action",\
    "title": {\
      "text": "占い結果"\
    },\
    "body": {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "占い結果を選択"\
      }\
    },\
    "can_close_with_escape": false,\
   "exit_action": {\
      "label": {\
        "text": "やめる"\
     },\
     "width": 75,\
     "action": {\
        "type": "minecraft:run_command",\
       "command": "trigger Znsi.Quickchat.Trigger set -1"\
     }\
    },\
    "columns": 4,\
   "actions": [\
      {\
       "label": {\
         "text": "村人",\
          "color": "blue"\
        },\
       "tooltip": {\
          "text": "$(Name)は",\
          "extra": [\
           {\
             "text": "村人",\
             "color": "blue",\
              "bold": true\
            }\
          ]\
        },\
        "width": 75,\
        "action": {\
          "type": "minecraft:run_command",\
          "command": "trigger Znsi.Quickchat.Trigger set 1"\
        }\
      },\
      {\
        "label": {\
          "text": "人狼",\
          "color": "dark_red",\
          "bold": true\
        },\
        "tooltip": {\
          "text": "$(Name)は",\
          "extra": [\
            {\
              "text": "人狼",\
              "color": "dark_red",\
              "bold": true\
            }\
          ]\
        },\
        "width": 75,\
        "action": {\
          "type": "minecraft:run_command",\
          "command": "trigger Znsi.Quickchat.Trigger set 2"\
        }\
      },\
      {\
        "label": {\
          "text": "吸血鬼",\
          "color": "light_purple",\
          "bold": true\
        },\
        "tooltip": {\
          "text": "$(Name)は",\
          "extra": [\
            {\
              "text": "吸血鬼",\
              "color": "light_purple",\
              "bold": true\
            }\
          ]\
        },\
        "width": 75,\
        "action": {\
          "type": "minecraft:run_command",\
          "command": "trigger Znsi.Quickchat.Trigger set 3"\
        }\
      }\
    ]\
  }

function jinro_rpg:game/quick_chat/show with storage jinro_rpg: Dialog.Quickchat