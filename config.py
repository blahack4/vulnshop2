import os
DB_HOST = os.environ.get("DB_HOST", "db.internal")
DB_USER = os.environ.get("DB_USER", "shop")
DB_PASSWORD = os.environ["DB_PASSWORD"]
