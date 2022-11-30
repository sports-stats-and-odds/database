from distutils.core import setup

setup(
    name='database',
    version='0.1',
    packages=['connector'],
    package_data={'': ['*.sql']},
    license='Creative Commons Attribution-Noncommercial-Share Alike license',
    long_description=open('README.md').read(),
    url='https://github.com/sports-stats-and-odds/database',
)