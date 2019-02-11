FROM python:3.6.7

# Meta-data
LABEL maintainer="Hidir Yuzuguzel <hidiryuzuguzel@gmail.com>"\
      description="ShakeMe: Key Generation From Shared Motion PICOM-2015 paper code,\
      data, libraries in one image"

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required libraries
RUN pip --no-cache-dir install numpy scipy matplotlib pandas sklearn jupyter

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run jupyter when container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]

