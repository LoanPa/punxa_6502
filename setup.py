# -*- coding: utf-8 -*-
"""
Created on Thu Jun  6 12:25:44 2024

@author: 2016570
"""

from setuptools import find_packages, setup

with open("README.md", "r") as fh:
    long_description = fh.read()

                         
setup(
    name='punxa_6502',
    version='2025.1',
    author='David Castells-Rufas',
    author_email='david.castells@uab.cat',
    description='Python-based 6502 Full System Simulator.',
    long_description=long_description,
    long_description_content_type="text/markdown",
    url='https://github.com/davidcastells/punxa_6502',
    install_requires=['py4hw>=2025.4' ],
    tests_require=['py4hw>=2025.4' ],
    packages=find_packages(),
    package_data={'': ['*.png']}
)
