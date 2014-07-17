# Architecture

Goal is that parts of the process can fail without loss of data.

Download the page -> hnhits/downloads

Process the downloaded page and store the time, title, URL and poster -> hnhits/processed
Remove the file from hnhits/downloads.

Proces the hnhits/processed file and store in the database.
Remove the file from hnhits/processed.

# Database schema

Schema should be very simple.

The story title must be unique.
Fields;
        id
        last_time -> time that the story first went to #1
        title
        URL
        poster

# Database use cases.

The title is unique -> New story, insert row
The title is not unique -> Update last_time

# Webpage display.

Display the top 50 hits ordered by the first_time.
