CREATE TABLE bumble_review_topics_clean AS (


WITH clean_topics AS
(SELECT topic,
        content_x AS content,
        top_words,
        CASE WHEN topic IN (1, 2, 7, 28, 71, 81) THEN 'Great app'
        WHEN topic = 3 THEN 'Verification/sign-in issues'
        WHEN topic IN (4, 17) THEN 'Account blocked'
        WHEN topic IN (5, 33, 51) THEN 'App loading/glitches'
        WHEN topic = 6 THEN 'Paywall complaints'
        WHEN topic IN (8, 72, 80) THEN 'Dating app comparison'
        WHEN topic IN (9, 50, 76) THEN 'Fake profiles/BOTs'
        WHEN topic = 10 THEN 'Limited matches'
        WHEN topic = 11 THEN 'Ease of use'
        WHEN topic = 12 THEN 'Vote Cap complaints'
        WHEN topic = 13 THEN 'Unsubscribe/cancellation issues'
        WHEN topic = 14 THEN  'Make the first move'
        WHEN topic IN (18, 25, 30, 40, 45, 75, 95) THEN 'Terrible app'
        WHEN topic IN (19, 69) THEN 'Lack of responses/ghosting'
        WHEN topic = 20 THEN 'Notification issues'
        WHEN topic IN (22, 57) THEN 'Connections/meeting people'
        WHEN topic = 24 THEN 'Profile moderation'
        WHEN topic = 26 THEN 'BFF & gender'
        WHEN topic = 27 THEN 'Self-deprecation'
        WHEN topic = 29 THEN '24 hour window'
        WHEN topic = 31 THEN 'Politics'
        WHEN topic = 32 THEN 'Free filter removal'
        WHEN topic = 34 THEN 'Price complaints'
        WHEN topic = 39 THEN 'Distance/location'
        WHEN topic = 41 THEN 'Ethnicity filter'
        WHEN topic = 43 THEN 'Payment issues'
        WHEN topic = 52 THEN 'Customer service'
        WHEN topic = 53 THEN 'Beeline'
        WHEN topic = 60 THEN 'User interface'
        WHEN topic = 73 THEN 'Algorithm'
        END AS clean_topic_name     
FROM bumble_review_topics)


SELECT topic,
       content,
       top_words,
       clean_topic_name
FROM clean_topics
WHERE clean_topic_name IS NOT NULL)




--exclude noisy topics: -1, 0, 15, 16, 21, 23, 35, 36, 37, 38, 42, 44, 46, 47, 48, 49, 53, 54, 55, 56, 58, 59, 61, 62, 63, 64
--65, 66, 67, 68, 70, 73, 74, 77, 78, 79, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 96, 97, 98

--INCLUDE:
-- Topic 1, 2, 7, 28, 71, 81 - great app
-- Topic 3 - photo verification / sign-in issues
-- Topic 4, 17 - account blocked
-- Topic 5, 33, 51 - app loading / glitches
-- Topic 6 - paywall complaints
-- Topic 8, 72, 80 - dating app comparison
-- Topic 9, 50, 76 - fake profiles / bots
-- Topic 10 - limited matches
-- Topic 11 - ease of use
-- Topic 12 - vote cap complaints
-- Topic 13 - unsubscribe / cancellation issues
-- Topic 14 - make the first move
-- Topic 18, 25, 30, 40, 45, 75, 95 - terrible app
-- Topic 19, 69 - lack of responses / ghosting
-- Topic 20 - notification issues
-- Topic 22, 57 - connections / meeting people
-- Topic 24 - profile moderation
-- Topic 26 - BFF and gender
-- Topic 27 - self-deprecation
-- Topic 29 - 24 hour message / votecap timing
-- Topic 31 - politics
-- Topic 32 - free filter removal
-- Topic 34 - price complaints
-- Topic 39 - distance / location
-- Topic 41 - ethnicity filter
-- Topic 43 - payment issues
-- Topic 52 - customer service
-- Topic 53 - Beeline
-- Topic 60 - user interface
-- Topic 73 - algorithm



