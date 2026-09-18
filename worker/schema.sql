CREATE TABLE IF NOT EXISTS logs (id INTEGER PRIMARY KEY AUTOINCREMENT,event TEXT NOT NULL,details TEXT,device TEXT,browser TEXT,screen TEXT,created_at TEXT NOT NULL DEFAULT (datetime('now')));
CREATE INDEX IF NOT EXISTS idx_logs_created_at ON logs(created_at);
