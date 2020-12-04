DATABASES = {
    'default': {
        'ATOMIC_REQUESTS': True,
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': "awx",
        'USER': "awx",
        'PASSWORD': "awxpass",
        'HOST': "postgres",
        'PORT': "5432",
    }
}

BROADCAST_WEBSOCKET_SECRET = "bG5WZDpRVjJ5OHBmSXRYSGZsR1pmS1lhYWJiVHROTkd5d3JtOnVXNjpPWkpEMDRRN3E1eTYtMkZLOl9aLjJkRHYwODVNQ2FKcFpnOkk5LWRnVEZQVC40bHhiMzpZVS5BSFUwTzFKY25HUTd4T3ksYmptUERvWlJfUlBDMWN3MW4="
