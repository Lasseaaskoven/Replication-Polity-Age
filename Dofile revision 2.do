
*Generation of logpop variable*
generate logpop= log( indbyggertal)

*Generation of log of population density*
generate logdensity= log(befolkningstaethed)


tsset kommunenr year


*Vizualisation of the dependent variables*

hist driftsresultatforskellobendekrpr
hist driftsresultatregnskablobendekrp

*Table 1 Descriptive statistics*

xtsum driftsresultatforskellobendekrpr driftsresultatregnskablobendekrp election sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende if year<2014



*Testing for random vs. fixed effects*
xtreg driftsresultatforskellobendekrpr   c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year, fe , if year<2014
estimates store fixed
xtreg driftsresultatforskellobendekrpr  c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year, re , if year<2014
hausman fixed


xtreg  driftsresultatregnskablobendekrp  c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year, fe , if year<2014
estimates store fixed
xtreg driftsresultatregnskablobendekrp  c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year, re , if year<2014
hausman fixed



*Table 2: Main models*


*Budget difference*
xtreg driftsresultatforskellobendekrpr   c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 i.year , fe cluster(kommunenr) , if year<2014
testparm c.election##c.sammenlagt
xtreg driftsresultatforskellobendekrpr   c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende  i.year , fe cluster(kommunenr) , if year<2014
testparm c.election##c.sammenlagt

*Hausmann tests Budget difference table 2*
xtreg driftsresultatforskellobendekrpr   c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65  i.year, fe , if year<2014
estimates store fixed
xtreg driftsresultatforskellobendekrpr  c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65  i.year, re , if year<2014
hausman fixed


xtreg driftsresultatforskellobendekrpr   c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year, fe , if year<2014
estimates store fixed
xtreg driftsresultatforskellobendekrpr  c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year, re , if year<2014
hausman fixed


*Fiscal surplus*
xtreg  driftsresultatregnskablobendekrp   c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 i.year , fe cluster(kommunenr)  , if year<2014
testparm c.election##c.sammenlagt
xtreg  driftsresultatregnskablobendekrp   c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende  i.year , fe cluster(kommunenr) , if year<2014
testparm c.election##c.sammenlagt


*Hausman tests Fiscal surplus Table 2*
xtreg  driftsresultatregnskablobendekrp  c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65  i.year, fe , if year<2014
estimates store fixed
xtreg driftsresultatregnskablobendekrp  c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65  i.year, re , if year<2014
hausman fixed


xtreg  driftsresultatregnskablobendekrp  c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year, fe , if year<2014
estimates store fixed
xtreg driftsresultatregnskablobendekrp  c.election##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year, re , if year<2014
hausman fixed



*Table 3: Effect over time with Hausman tests *

generate valg2009interaction= valg2009*sammenlagt
generate valg2013interaction= valg*sammenlagt

xtreg driftsresultatforskellobendekrpr   c.valg##c.sammenlagt c.valg2009##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year , fe cluster(kommunenr) , if year<2014
testparm c.valg##c.sammenlagt 
testparm c.valg2009##c.sammenlagt

xtreg driftsresultatforskellobendekrpr   c.valg##c.sammenlagt c.valg2009##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year , fe  , if year<2014
estimates store fixed
xtreg driftsresultatforskellobendekrpr   c.valg##c.sammenlagt c.valg2009##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year , re  , if year<2014
hausman fixed


xtreg  driftsresultatregnskablobendekrp  c.valg##c.sammenlagt c.valg2009##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year  , fe cluster(kommunenr) , if year<2014
testparm c.valg##c.sammenlagt 
testparm c.valg2009##c.sammenlagt

xtreg  driftsresultatregnskablobendekrp  c.valg##c.sammenlagt c.valg2009##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year  , fe  , if year<2014
estimates store fixed
xtreg  driftsresultatregnskablobendekrp  c.valg##c.sammenlagt c.valg2009##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende i.year  , re  , if year<2014
hausman fixed




*Table 4* 
* Alternative measure of budget cycle*
xtreg driftsresultatforskellobendekrpr   c.aartilvalg##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende  i.year , fe cluster(kommunenr) , if year<2014
testparm c.aartilvalg##c.sammenlagt
xtreg  driftsresultatregnskablobendekrp   c.aartilvalg##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende  i.year , fe cluster(kommunenr) , if year<2014
testparm c.aartilvalg##c.sammenlagt


*Hausman tests Table 4*
xtreg driftsresultatforskellobendekrpr   c.aartilvalg##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende  i.year , fe  , if year<2014
estimates store fixed
xtreg driftsresultatforskellobendekrpr   c.aartilvalg##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende  i.year , re  , if year<2014
hausman fixed


xtreg  driftsresultatregnskablobendekrp   c.aartilvalg##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende  i.year , fe  , if year<2014
estimates store fixed
xtreg  driftsresultatregnskablobendekrp   c.aartilvalg##c.sammenlagt leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende  i.year , re  , if year<2014
hausman fixed

*Table 5* 
* One step GMM estimation with lagged dependent variable* 
generate electioninteraction= election*sammenlagt
tabulate year, gen(year)


xtabond2 driftsresultatforskellobendekrpr l.driftsresultatforskellobendekrpr election electioninteraction leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende year1 year2 year3 year4 year5 year6 year7, gmm (l.driftsresultatforskellobendekrpr) iv (election electioninteraction leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende year1 year2 year3 year4 year5 year6 year7)   robust small ,if year<2014

xtabond2 driftsresultatregnskablobendekrp  l.driftsresultatregnskablobendekrp  election electioninteraction leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende year1 year2 year3 year4 year5 year6 year7, gmm (l.driftsresultatregnskablobendekrp) iv (election electioninteraction leftwingmayor beskatningsgrundlagprindbyggerdk fiscalstress udgiftsbehovprindbyggerdkr logpop logdensity  andelvideregaaendeuddannelse fuldtidsledigepr100176466aarige andel65 likvideaktiverprindbyggerlobende year1 year2 year3 year4 year5 year6 year7)  robust small ,if year<2014

