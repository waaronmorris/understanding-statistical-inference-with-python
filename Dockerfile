FROM jupyter/scipy-notebook:37af02395694

# launchbot-specific labels
LABEL name.launchbot.io="Understanding statistical inference with Python"
LABEL workdir.launchbot.io="/home/jovyan"
LABEL description.launchbot.io="Understanding statistical inference with Python"
LABEL 8888.port.launchbot.io="Jupyter Notebook"

# Set the working directory
WORKDIR /home/jovyan

# Add files
COPY 2002FemPreg.dct /home/jovyan/2002FemPreg.dct
COPY 2002FemPreg.dat.gz /home/jovyan/2002FemPreg.dat.gz
COPY check_env.py /home/jovyan/check_env.py 
COPY cumulative_snowfall.png /home/jovyan/cumulative_snowfall.png	
COPY effect_size.ipynb /home/jovyan/effect_size.ipynb
COPY effect_size_soln.ipynb /home/jovyan/effect_size_soln.ipynb
COPY effect_size_soln.ipynb /home/jovyan/effect_size_soln.ipynb
COPY first.py /home/jovyan/first.py
COPY hypothesis.ipynb /home/jovyan/hypothesis.ipynb
COPY hypothesis.py /home/jovyan/hypothesis.py
COPY hypothesis_soln.ipynb /home/jovyan/hypothesis_soln.ipynb
COPY lyrics-elvis-presley.txt /home/jovyan/lyrics-elvis-presley.txt
COPY nsfg.py /home/jovyan/nsfg.py
COPY nsfg2.py /home/jovyan/nsfg2.py
COPY pg2591.txt /home/jovyan/pg2591.txt
COPY pmf_intro.ipynb /home/jovyan/pmf_intro.ipynb
COPY sampling.ipynb /home/jovyan/sampling.ipynb
COPY sampling_soln.ipynb /home/jovyan/sampling_soln.ipynb
COPY thinkplot.py /home/jovyan/thinkplot.py
COPY thinkstats2.py /home/jovyan/thinkstats2.py

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=* --NotebookApp.token='' --NotebookApp.disable_check_xsrf=True

