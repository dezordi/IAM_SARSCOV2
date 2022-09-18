from setuptools import setup

setup(name='ViralFlow',
      version='1.0.dev',
      description='''
      Workflows for viral genome Assembly at FioCruz/IAM
      ''',
      url='https://github.com/dezordi/ViralFlow/',
      author='"Filipe Z. Dezordi',
      author_email='zimmer.filipe@gmail.com',
      #packages=['viralflow'],
      classifiers=[
        'Development Status :: 4 - Beta',
        'Programming Language :: Python :: 3.8',
        'Intended Audience :: Science/Research',
        'Topic :: Scientific/Engineering :: Bio-Informatics'
          ],
      scripts=['wrapper/viralflow_dev'],
      zip_safe=False
)
