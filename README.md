Note: Please visit Wiki page of this repository for detailed overview of the project.

Installation Steps (Windows 10)

-	Install Python & PIP (add to your PATH)

 https://www.python.org/
 
 Versions used for this project:
 
	Python: 3.7.3
  
	PIP: 19.1.1

-	Use PIP to install Robot Framework
1.	Open Windows command line
2.	Type: pip install robotframework
3.	Hit Enter

-	Use PIP to install SeleniumLibrary
1.	Type: pip install robotframework-seleniumlibrary
2.	Hit Enter

-	Select and install desired browser versions
Download IE/Edge/Chrome/Firefox

-	Install Selenium Webdrivers for each browser
1.	Go to https://www.seleniumhq.org/
2.	Click “Download”
3.	Find desired drivers in “Third Party Drivers” section
Note: Adding downloaded Webdrivers to System PATH is very important.

-	Install the PyCharm IDE & Intellibot plugin
1.	Go to https://www.jetbrains.com/
2.	Click Tools > PyCharm (Under IDE)
3.	Install PyCharm
4.	Launch PyCharm
5.	Open File > Settings
6.	Click on Plugins
7.	Install Intellibot (Patched for SeleniumLibrary)
8.	Restart PyCharm

•	Running Tests

1.	From PyCharm terminal or Python CLI
2.	Type: robot -d results tests/Cavok_App.robot 
3.	Hit enter

Above steps will save result files on “Results” folder as mentioned on the command and overwrites existing files on the directory.  To have new result files after each test run, the following command can be used: 
robot -d results --timestampoutputs tests/Cavok_App.robot
To run test cases of only a particular workflow, tags can be used during execution.
robot -d results -i logbook tests/Cavok_App.robot
Here, -i is used with tagname “logbook” to test features of logview
