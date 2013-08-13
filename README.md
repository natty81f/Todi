Todi:
========

An app where you chose an icon(Todi face: happy, sad, confused, etc.) which represents your mood of the day. Based on the icon you chose you will then write a message(today I was… or today I learned) that will be saved to the database. Later you will be able to search your history by:

- date (you can select a range: start date to end date)
- moods (Todi face: happy, sad, tired, etc.)

Homepage: list of Todi icons. Once you click on an specific icon, window pops up with a "write a message to your future self" and save feature.

Future features: 

-Share this Todi message card (gem 'social-share-button')
-Send  a report of your moods to your email every 2 months?


Data model:

Registrant model     (document)
User model           (document) 
Message model        (embedded document - embedded on user model) 
