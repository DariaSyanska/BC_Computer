-- Клас User (Користувач)
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    word_count_kpi INTEGER DEFAULT 1000
);

-- Клас TextContent (Твір)
CREATE TABLE text_contents (
    content_id SERIAL PRIMARY KEY,
    title VARCHAR(200),
    content TEXT,
    author_id INTEGER REFERENCES users(user_id)
);
