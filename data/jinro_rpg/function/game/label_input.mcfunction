#>jinro_rpg:game/label_input


##Actionsを書き込む
    $data modify storage jinro_rpg: Dialog.Providence.actions append value {\
        "label": {\
        "player": {\
          "name": "$(PlayerID)"\
        },\
        "extra": [\
          {\
            "text": " $(Name)"\
          }\
        ],\
        "color": "white"\
      },\
        "tooltip": {\
         "text": "$(Name) を発光",\
            "italic": false\
        },\
        "width": 75,\
        "action": {\
         "type": "minecraft:run_command",\
            "command": "trigger Znsi.Procidence.Trigger set $(Score)"\
        }\
    }

    $data modify storage jinro_rpg: Dialog.Medium.actions append value {\
      "label": {\
        "player": {\
          "name": "$(PlayerID)"\
        },\
        "extra": [\
          {\
            "text": " $(Name)"\
          }\
        ],\
        "color": "white"\
      },\
      "tooltip": {\
        "text": "$(Name) の生死を確認",\
        "italic": false\
      },\
      "width": 75,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger Znsi.Medium.Trigger set $(Score)"\
      }\
    }

    $data modify storage jinro_rpg: Dialog.Quickchat.actions append value {\
      "label": {\
        "player": {\
          "name": "$(PlayerID)"\
        },\
        "extra": [\
          {\
            "text": " $(Name)"\
          }\
        ],\
        "color": "white"\
      },\
      "tooltip": {\
        "text": "$(Name) を選択",\
        "italic": false\
      },\
      "width": 75,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger Znsi.Quickchat.Trigger set $(Score)"\
      }\
    }

##対象を切り替えて再度実行
    data remove storage jinro_rpg: Dialog.Player.Scores[0]
    execute if data storage jinro_rpg: Dialog.Player.Scores[0] run data modify storage jinro_rpg: Dialog.Player.Score set from storage jinro_rpg: Dialog.Player.Scores[0]
    execute if data storage jinro_rpg: Dialog.Player.Scores[0] run function jinro_rpg:game/label_loop with storage jinro_rpg: Dialog.Player