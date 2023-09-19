install.packages("survey")
library(survey)

data(api)
srs-design <- svydesign(id=~l, fpc=~fpc, data=apisrs)
srs-design

svytotal(~enrol1, srs-design)

svymean(~enroll, srs-design)