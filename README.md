# impossible-pali-project

# Design Brief -aka Ven. Pasanna's initial idea. #

Create a Pāḷī learning app with emphasis on 'natural', auditory, learning.  
The app will  use phrases which frequently occur in the sutta pitaka.

This app will set itself apart from other resources which focus on grammar tables and written learning.

The app will aid in understanding, pronouncing and memorising key Pāḷī phrases.

## Audience ##
Those who are not 'good' at learning languages .There is a growing interest in learning Pāḷī from the younger generation, Western lay community. Additionally this app should be suitable for monastics wishing to dip their toes into Pāḷī without an interest in learning grammar.

## Technical Requirements ##
Offline first and low spec: suitable for monastics and people who live simple lives with old computer and devices. 

### Functionality ###
- Interactive quiz/game with multiple levels of difficulty .
- Progress bar through each exercise and through each level.
- Audio- Ability to play audio in Pāḷī and English, 
	- jump to different spots in an audio track once loaded?
	- Normal and 75% speed.
- Drag and drop word cards- similar to Duolingo
	- *Add screenshots from DL here*
- Scoreboard and gaming incentives, reminders to keep playing ie. 'streaks'
- Track user's speed and accuracy in recognising individual words (and phrases?)

## Design Requirement ##
- Visually aided learning 
	- Colours for nouns, verbs and adjectives?- similar to Suñño's Pāḷī notes to help match EN to PI due to word order change.
	- Visual icons or simple illustrations to aid in introducing some words (mostly nouns?)
	- Extended Pāḷī lookup, with current context first. 
- Characters (monastic and lay) to 'read' the phrases.
- Icons for progress board, scoring system etc.

## Learning Methodology ##
- Learn by play
- Use only words and phrases frequently found in the suttas
- Introduce around 5–10 words per level 
- Spaced repetition
- Repeat words/phrases that take longer to recognise more often.
- Build on exisiting phrases until they are phrases found in the suttas
- Use phrase formulas such as in anapanasati where only a few words change
- Use audio, visual and text as learning aids.
- Naturally introduce gender, tense and case- no grammar tables or need to understand what a verb/noun/adjective etc is.
- Mostly translate from PI to EN

# Developement of Concept #
1. Make 200 single word AnkiApp deck with Audio based on frequently used words.
	- Creaete 200 x audio PI
	- Create 200 x audio EN
	- Word IDs to match PI and EN audio files.
	- Export and CSV and import to Anki - **DONE** https://ankiweb.net/decks/share/1678078923937
2. Make 50 phrase cards with audio for Anki ~~(Based on SC-voice segments).~~ Using X-SAMPA via AWS Polly or GCloud TTS
3. Simplify phrase cards  further to make  lower-level cards. 
4. Build 6 basic game screens in HTML
	1.  3 images with PI on buttons:  eg Which one is 'dwelling' picture of hut
	2. Match the words you hear in Pāḷī to their English. Table 4 PI words, 4 EN words.
	3. Translate the sentence into English: Drag and drop English words.
	4. What do you hear? Drag and drop PI words to make phrase.
	5. Pronounciation of Phonemes: What do you here 3x syllables ie 'ña' 'na' 'nu'
	6. Fill in the missing letters (sneaky grammar!) Samano Buddh__ puccha__ (the recluse questions the Buddha). Janā__ (I know)
7. All exercises to have dropdown answers based in PI lookups.

## Idea of sentence progresions ##

> Taṁ kiṁ maññasi, mahārāja  
> What do you think, great king?

1. king, great
2. Great King
3. The king thinks
4. you think, to think. I say, to say (maññasi, vadāmi ) - introduce naturally
5. What do you think?
6. Sādhu!

> I said  vadāmi  
> upasankamitvā evaṁ vadāmi

> Puna caparāhaṁ (ca para ahaṃ), bhikkhave, te nigaṇṭhe evaṁ vadāmi: ‘taṁ kiṁ maññatha, āvuso nigaṇṭhā MN 101  
> Furthermore (again, and another I) I said (this) to these (pl) Jain ascetics: What do you think Venerables Jains.

> No hidaṃ bhante  
> No we don't, Venerable Sir

> *Seyyathāpi, āvuso nigaṇṭhā, puriso sallena viddho (pp vijjhati)*  
> Suppose, venerables Jains, a man was struck by a dart.  
> A man was struck by a dart. *Puriso sallena viddho*

--- Find the most common declensions of pp, gerund etc and use words from that declension first.   
E.g hatvā, disvā,  gahetvā rather than ...anna   

Resource: Digital Pali Dictionary https://digitalpalidictionary.github.io/features.html#declension%E2%80%93conjugation

> Buddhaṃ saraṇaṃ gacchāmi  
> Natthi me saranam annaṃ  
> Buddho me saranam varaṃ  
> Etena sacca vajjena.  
> Hotu me sabbāda

> Atha kho bhagavā sāyanhasamayaṁ nivāsetvā pattacīvaramādāya saddhiṁ bhikkhusaṅghenayena āvasathāgāraṁ tenupasaṅkami

> Bhagavā nivāsetvā patta cīvaraṃ ādādaya āvasathāgāraṃ tenupasaṅkami  
> The Blesed one, having dressed, taking his bowl and robe, approached the rest house.

> Bhagavā agāraṃ upasaṅkami  
> The blessed one approached the house.

> Atha kho, āyasmā sañjīvo tassā rattiyā accayenatāya samāpattiyā vuṭṭhahitvā cīvarānipapphoṭetvā pubbaṇhasamayaṁ nivāsetvāpattacīvaramādāya gāmaṁ piṇḍāya pāvisi

> Āyasmā sañjīvo gāmaṃ piṇḍāya pāvisi.  
> Venerable Sañjīva entered the village for alms.  
MN50
