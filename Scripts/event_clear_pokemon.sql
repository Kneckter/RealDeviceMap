CREATE EVENT IF NOT EXISTS `clear_pokemon` ON SCHEDULE EVERY 15 MINUTE
DO DELETE FROM pokemon WHERE expire_timestamp <= UNIX_TIMESTAMP() - 3600;