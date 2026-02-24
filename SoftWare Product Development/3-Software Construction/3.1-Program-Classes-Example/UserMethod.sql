/* Функція авторизації користувача user_login
Вхідні параметри: email, пароль
Результат: 1 (OK), -1 (Email error), -2 (Password error)
*/
CREATE OR REPLACE FUNCTION user_login(v_email VARCHAR, v_password VARCHAR)
RETURNS INTEGER AS $$
DECLARE
    v_user_id INTEGER;
BEGIN
    -- Перевірка формату email (спрощено)
    IF v_email NOT LIKE '%@%' THEN
        RAISE NOTICE 'Incorrect email format';
        RETURN -1;
    END IF;

    -- Перевірка довжини пароля (умова 4 з ЛР5)
    IF length(v_password) < 8 THEN
        RAISE NOTICE 'Password too short';
        RETURN -2;
    END IF;

    RETURN 1; -- Успішна імітація авторизації
END;
$$ LANGUAGE plpgsql;
