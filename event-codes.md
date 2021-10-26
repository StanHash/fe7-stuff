
# 00 TODO

TODO

    layout:
    +00 | half | (id)
    +04 | end

# 01 TODO

TODO

    layout:
    +00 | half | (id)
    +04 | end

# 02 Sleep

- `STAL duration` (traditional)
- `STALL duration` (peerless)

Waits for some amount of frames. Doesn't do anything if player skipped scene.

    layout:
    +00 | half | (id)
    +02 | half | duration
    +04 | end

# 03 SleepFast

Waits for some amount of frames. Doesn't do anything if player skipped scene. Time passes 4 times as fast if the A button is held.

    layout:
    +00 | half | (id)
    +02 | half | duration
    +04 | end

# 04 SleepText

- `CGSTAL duration` (traditional)
- `STALLCG duration` (peerless)

Waits for some amount of frames. Doesn't do anything if player skipped scene or skipped talk.

    layout:
    +00 | half | (id)
    +02 | half | duration
    +04 | end

# 05 Background

- `BACG backgorund` (traditional)
- `BACKGROUND background` (peerless)

Displays talk background. Clears talk bubbles and faces. Doesn't do anything if player skipped scene.

    layout:
    +00 | half | (id)
    +02 | half | background
    +04 | end

# 06 BackgroundRandom

Displays random talk background (between 0 and 0x5A). Clears talk bubbles and faces. Doesn't do anything if player skipped scene.

    layout:
    +00 | half | (id)
    +04 | end

# 07 BackgroundMore

Displays talk background. Doesn't do anything if player skipped scene.

    layout:
    +00 | half | (id)
    +02 | half | background
    +04 | end

# 08 BackgroundLynModeDeath

- `BACKGROUND_UNK` (peerless)

Displays talk background defined in ChapterInfo. Clears talk bubbles and faces. Doesn't do anything if player skipped scene. If flag 0x9D is not set, sets it and plays BGM 0x2C ("Within Sadness").

This is used in lyn mode death check events.

    layout:
    +00 | half | (id)
    +04 | end

# 09 ClearTalk

TODO

    layout:
    +00 | half | (id)
    +04 | end

# 0A ClearSkip

TODO

    layout:
    +00 | half | (id)
    +04 | end

# 0B ClearSkipFadeToPrep

TODO

    layout:
    +00 | half | (id)
    +04 | end

# 0C TODO

TODO

    layout:
    +00 | half | (id)
    +04 | end

# 0D Talk

- `TEXT msg` (traditional)
- `TEXT msg` (peerless)

Displays talk msg. Doesn't do anything if player skipped scene. Resets talk skip flag.

    layout:
    +00 | half | (id)
    +04 | word | msg
    +08 | end

# 0E TalkOpaque

- `TEX2 msg` (traditional)
- `TEXT_UNK msg` (peerless)

Displays talk msg. Talk bubbles are opaque, allowing for other transparency effect to occur on screen. Doesn't do anything if player skipped scene. Resets talk skip flag.

    layout:
    +00 | half | (id)
    +04 | word | msg
    +08 | end

# 0F TalkByMode

- `TEXTIFEM msg_em msg_hm` (traditional)
- `TEXT_IFMODE msg_em msg_hm` (peerless)

Displays talk msg. Which msg is displayed depends on current game mode. Doesn't do anything if player skipped scene. Resets talk skip flag.

    layout:
    +00 | half | (id)
    +04 | word | msg_em
    +08 | word | msg_hm
    +0C | end

# 10 TODO

TODO

    layout:
    +00 | half | (id)
    +04 | ???
    +08 | end

# 11 TalkMore

- `MORETEXT msg` (traditional)
- `MORETEXT msg` (peerless)

Displays talk msg. Doesn't do anything if player skipped scene or skipped talk.

    layout:
    +00 | half | (id)
    +04 | word | msg
    +08 | end

# 12 TalkMoreByMode

- `MORETEXTIFEM msg_em msg_hm` (traditional)
- `MORETEXT_IFMODE msg_em msg_hm` (peerless)

Displays talk msg. Talk bubbles are opaque, allowing for other transparency effect to occur on screen. Doesn't do anything if player skipped scene or skipped talk.

    layout:
    +00 | half | (id)
    +04 | word | msg_em
    +08 | word | msg_hm
    +0C | end

# 13 TalkAuto

Displays talk msg configured by the event caller. Doesn't do anything if player skipped scene. Resets talk skip flag.

This is used to display support conversations.

    layout:
    +00 | half | (id)
    +04 | end

# 14 TalkContinue

- `SCRO` (traditional)

Restores an interrupted talk. Ends talk if the player skipped scene.

    layout:
    +00 | half | (id)
    +04 | end

# 15 TalkGeneric

- `_0x15 list_addr` (traditional)

Displays talk msg in given list. Which entry in the list depends on the conversation group of the active unit. Doesn't do anything if player skipped scene. Resets talk skip flag.

The list is formatted as an array of words.

    layout:
    +00 | half | (id)
    +04 | word | list_addr
    +08 | end

# 16 TalkMoreGeneric

- `_0x16 list_addr` (traditional)

Displays talk msg in given list. Which entry in the list depends on the conversation group of the active unit. Doesn't do anything if player skipped scene or skipped talk.

The list is formatted as an array of words.

    layout:
    +00 | half | (id)
    +04 | word | list_addr
    +08 | end

# 17 TODO

TODO

    layout:
    +00 | half | (id)
    +02 | half | ?
    +04 | word | ?
    +08 | end

# 18 TalkByTactGender

...

# 97 FightScript

TODO

    layout:
    +00 | half | (id)
    +04 | word | pid_a
    +08 | word | pid_b
    +0C | word | script
    +10 | half | item_used
    +12 | byte | uses_ballista
    +13 | byte | is_fuzzy_script?
    +14 | end
