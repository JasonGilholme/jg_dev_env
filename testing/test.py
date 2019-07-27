import sys
import subprocess
import numpy

PROC = subprocess.Popen(['bash'])

ANOTHER = numpy.append([], [4])


import logging

logger = logging.getLogger(name=__name__)

logger.info("message")

def function_name(asdf):
    """
    blah
    """
    a_var = asdf

    print(a_var)
