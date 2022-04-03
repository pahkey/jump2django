from .base import *

ALLOWED_HOSTS = ['3.37.58.70', 'pybo.kr']
STATIC_ROOT = BASE_DIR / 'static/'
STATICFILES_DIRS = []
DEBUG = False

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'pybo',
        'USER': 'dbmasteruser',
        'PASSWORD': '<데이터베이스암호>',
        'HOST': '<데이터베이스주소>',
        'PORT': '5432',
    }
}