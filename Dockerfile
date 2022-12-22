FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt /app/requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

Run apt-get update && apt-get install rsync -y
# ONLY FOR DEVELOPMNET FAST CACHING
COPY . /app


# # Make port 8000 available to the world outside this container
EXPOSE 8000

# Run the Django application+


ENTRYPOINT [ "./entrypoint.sh" ]






# Set up the database for storing the catalog data:

# RUN python manage.py migrate

# # Populate the Database

# RUN python manage.py updatecatalog

# # Collect Static Files

# RUN python manage.py collectstatic







# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
