# Battery Monitor Script

A bash script written to notify the user when the laptop battery is getting low. 

## Getting Started

To use this program to notify you about your battery life, you will need to edit the crontab file on your linux computer.

### Running

After installing the program, you can open up the file with a text editor and edit either the battery percentage to notify at, or the notification message. 

In order for this to work, you need to add it to your cron jobs: [this link](https://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/) describes how to do that. I have mine set to check every minute, which is just * * * * * in cron, but you can have yours check however often you like!