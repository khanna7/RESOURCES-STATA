cd "/Volumes/caas/MERITS/RESOURCES/Data Processing/Data Analysis/Outcome Analyses 2016/Manuscript Revisions_2020/Aditya Khanna Analyses 2022/RESOURCES-AK-STATA"


clear
//import sas "../RESOURCES.sas7bdat"
import sas "../GEEOUTCOME2021.sas7bdat"

xtset id
xtgee NCIGS AGE, family(nbinomial) link(log) corr(ind) 

xtgee NCIGS AGE MI CBT  M3ENVDAYS  M6ENVDAYS  MIBYCBT MIBYTIME, family(nbinomial) link(log) corr(ind)
