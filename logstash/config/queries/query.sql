select m.message_id, n.notification_tnotify, m.message_text, c.channel_name, c.channel_title, c.channel_size, c.channel_url, c.channel_id, c.channel_tcreate, c.channel_is_mega_group, c.channel_is_private, c.channel_is_enabled, k.keyword_description, k.keyword_regex, u.chat_user_name, u.chat_user_first_name, u.chat_user_last_name, u.chat_user_id, u.chat_user_phone, u.chat_user_is_bot, u.chat_user_tlogin, u.chat_user_tcreate, u.chat_user_tmodified from notification n, message m, keyword k, chat_user u, channel c where n.channel_id = c.channel_id and n.keyword_id = k.keyword_id and n.message_id = m.message_id and  n.chat_user_id = u.chat_user_id and m.message_id > :sql_last_value and n.notification_tnotify < NOW() ORDER BY m.message_id