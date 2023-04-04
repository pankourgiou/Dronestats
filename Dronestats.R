str(drones)
summary(drones)
table(drones$various_applications)
library(ggplot2)

ggplot(drones, aes(x = various_applications)) +
  geom_bar(fill = "cornflowerblue", color = "black") +
  labs(title = "Bar Plot of Drone Applications",
       x = "Application", y = "Count")
# Create a contingency table of various_applications and group
contingency_table <- table(drones$various_applications, drones$group)

# Perform a chi-squared test
chisq.test(contingency_table)
