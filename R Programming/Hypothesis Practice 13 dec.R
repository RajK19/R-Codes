lungCapData <- read.table(file.choose(), header=T, sep="\t")
names(lungCapData)
class(lungCapData)
help(t.test)
?t.test

boxplot(lungCapData)

# Ho: mn < 8
# one-sided 95% confidence interval for mn

t.test(LungCap, mn=8, alternative="less", conf.level=0.95)

# two-sided
t.test(LungCap, mn=8, alternative="two.sided", conf.level=0.95)
t.test(LungCap, mn=8, alternative="two.sided", conf.level=0.99)