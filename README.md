# Sunbird: My favourite calendar program

I've been using Mozilla products as my calendar system for many years, but sadly
their flagship calendar product, Sunbird, was discontinued in 2010.
Sunbird was and is a really nice calendar solution because it has the following
combination of features:

- It's local-first (no network required).
- It supports the iCalendar format and CalDAV protocol for syncing with other calendar systems.
- It has a very nice user interface (what you'd expect from a large company like Mozilla).
  - It supports mouse-driven drag-and-drop for moving events around.
- It has barely any dependencies, so it can be easily installed on a wide variety of platforms.
- It uses very little resources, given that it was designed to run on the average computer of 2004-2010.
- It's open source, so it can theoretically be updated and ported to other platforms.
- It runs on Linux, and doesn't require any web accounts (e.g. Outlook, Google Calendar, etc.).

# History

[October 1998: Sunbird begins life as 'Zulu'](https://web.archive.org/web/19991011010018/http://www.mozilla.org/projects/calendar/)
- With the stated aim of supporting iCalendar (still one of its huge advantages).
- "Zulu is the next-generation calendar client currently under development for Netscape Communicator."

[December 2001: 'Zulu' is renamed 'Mozilla Calendar'](https://web.archive.org/web/20011211125739/http://www.mozilla.org/projects/calendar/)
According to the webpage from the time, it still was not a 'released' product, and needed to be compiled by users.
Stated aims at this point:
- "The Mozilla Calendar project is meant to create an open source, standards based calendar solution."
- "Presently the code only runs under Linux, with plans in the works to quickly convert the code to run under Windows and Mac. "
At this point, the project states that the code for Mozilla Calendar was
donated from *OEone Corporation*.  Whether this group were also involved with
'Zulu' is unclear.  Perhaps they were.  Based on [a pixelated screenshot](https://web.archive.org/web/20011211125739/http://www.mozilla.org/projects/calendar/screenshot.html) of the
calendar from the time, it looks like at that stage it ran as a server with a
web interface, accessible via Firefox, or perhaps the entire calendar ran as a
Firefox extension.

[August 2002: 'Mozilla Calendar' adds Windows and Mac support](https://web.archive.org/web/20020802223115/http://www.mozilla.org/projects/calendar/)
![Screenshot 1](https://web.archive.org/web/20020428144010if_/http://mozilla.org:80/projects/calendar/images/mozilla_calendar.jpg)
![Screenshot 2](https://web.archive.org/web/20020822154815if_/http://mozilla.org:80/projects/calendar/images/mozilla_newevent.gif)

At this point, the calendar is definitely a standalone application, and has a similar appearance to the final Sunbird product release.

[February 2003: Calendar 'Skins' become available](https://web.archive.org/web/20030201103420/http://projectit.com/skypilot/)

[April 2004: 'Mozilla Calendar' is renamed 'Sunbird'](https://web.archive.org/web/20040404190553/http://www.mozilla.org/projects/calendar/sunbird.html)

"The Sunbird Project is a redesign of the Mozilla Calendar component. Our goal
is to produce a cross platform standalone calendar application based on
Mozilla's XUL user interface language. At the moment the "Sunbird" name is a
project name. It is not official and may change in the future."

"Our intended user is someone who uses Mozilla Firefox (or another browser) as
his browser, Mozilla Thunderbird (or another mail client) as his mail client
and wants a calendar application based on Mozilla."

"In addition, by focusing solely on standalone calendar, we believe we can make
some dents in the overall footprint and performance of the calendar application
by removing components and chrome we don't need."

"At the moment Sunbird is in an experimental stage. Although it is quite
stable, we recommend it for testing purposes only."

Later:

"In addition, by focusing solely on standalone calendar, we believe we can make
some dents in the overall footprint and performance of the calendar application
by removing components and chrome we don't need."

[A 2004 Review of Sunbird](https://web.archive.org/web/20041101091034/http://osdir.com/Article1558.phtml)

[April 2006: First mention of 'Lightning'](https://web.archive.org/web/20060427181604/http://www.mozilla.org/projects/calendar/lightning/index.html)

What would eventually come to replace Sunbird was a spinoff project called
'Lightning', which essentially took Sunbird and made it into a Thunderbird
extension.  The first mention I could find of it was in April 2006, when
it started to appear below the Sunbird project on the Mozilla website.

[2007: Lightning starts to be prioritised](https://web.archive.org/web/20070528183038/http://www.mozilla.org/projects/calendar/sunbird/index.html)
In a bold move, Mozilla start to position Lightning above Sunbird on their
official website.  Though both projects are still in development under
the umbrella 'Mozilla Calendar' project.

[April 2010: Mozilla announce Sunbird's 'last version'](https://web.archive.org/web/20100404032000/http://www.mozilla.org/projects/calendar/)
"This is the last public Sunbird release by the Calendar Project.
We recommend upgrading to Thunderbird 3 and Lightning 1.0 beta1."

To me this is highly contentious reasoning, given that Sunbird and Thunderbird
are very different products.  To someone who already has a favourite email
client, they now have to choose between their email client and their calendar
client: stay with Sunbird-style workflow and adopt Thunderbird, or stay with
their email client and lose their Sunbird-style workflow by looking for a
different calendar solution.

[January 2014: Mozilla remove all mention of Sunbird from their website](https://web.archive.org/web/20140104071728/http://www.mozilla.org/en-US/projects/calendar/)
Lightning is now the only calendar product mentioned on the Mozilla website,
which integrates with Thunderbird.

# Quality

The reason Sunbird is so good is that it was in active development for 15 years
or more, by whole teams of developers and designers.  This is a level or resources
not typical of open source projects, and it shows in the quality of the product, which
is still one of the best desktop calendars for Linux today.

# Installation

I've put together a `install.sh` script which can be used to install Sunbird on
a Linux system.  It pulls the last stable version of Sunbird from the Mozilla
archives, checks a SHA256 hash to verify the integrity of the download, and
then extracts the files, installs the application, icons and desktop entry.

Requirements: gtk2
