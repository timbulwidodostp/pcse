# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Panel corrected standard error estimation Use pcse With (In) R Software
install.packages("pcse")
library("pcse")
pcse = read.csv("https://raw.githubusercontent.com/timbulwidodostp/pcse/main/pcse/pcse.csv",sep = ";")
# Estimation Panel corrected standard error estimation Use pcse With (In) R Software
pcse_lm <- lm(growth ~ lagg1 + opengdp + openex + openimp + central + leftc + inter + as.factor(year), data = pcse)
summary(pcse_lm)
pcse <- pcse(pcse_lm, groupN = pcse$country, groupT = pcse$year, pairwise = TRUE)
summary(pcse)
# Panel corrected standard error estimation Use pcse With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished