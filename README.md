# TEMPO_bulletinb_updater_2020
A script to update your ut1.dat TEMPO file

Have you ever got this error from TEMPO? 

```bash
*** Warning - MJD = ...... outside UT1 table range (40224-......)

*** Warning - Further UT1 messages suppressed
```

This is because your ut1.dat is not up to date but the instruction that I have found so far is not up to date i.e. http://www.jb.man.ac.uk/~pulsar/observing/progs/tempo_ut1.html, https://sites.google.com/site/maurobarbieriuda/research/updating-tempo2.
So, I wrote a script to do that job to you.  However, I am also not a TEMPO expert, so please use this script by your own risk 

## Installation
```bash
git clone bulletinb_updater_2020.sh
```

## Usage
```bash
chmod u+x bulletinb_updater_2020.sh
./bulletinb_updater_2020.sh
mv ut1.dat $TEMPO/clock/ 
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

Or you can wish me luck :P 

## License
[MIT](https://choosealicense.com/licenses/mit/)
