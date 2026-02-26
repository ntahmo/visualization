-   **What software did you use to create your data visualization?** R programming, because it supports transparent, reproducible data workflows.

-   **Who is your intended audience?** Transit planners and commuters interested in understanding how delay patterns differ by period of day and direction of travel on weekends versus weekdays.

-   **What information or message are you trying to convey with your visualization?** That average LRT delays differ between mornings and afternoons and are not uniform across directions of commute on weekdays versus weekends: More delays happen eastbound on weekday mornings compared to afternoons and the case is even more true on weekends.

-   **What aspects of design did you consider when making your visualization? How did you apply them? With what elements of your plots?** I used faceting to separate weekdays and weekends, grouped bars to compare directions within morning and afternoon, a shared y-axis for comparability, and a colorblind-friendly palette using Viridis.

-   **How did you ensure that your data visualizations are reproducible? If the tool you used to make your data visualization is not reproducible, how will this impact your data visualization?** The visualization is generated entirely through code, from data loading, to cleaning, to plotting, and exporting as an image. We expect identical results across runs of the code.

-   **How did you ensure that your data visualization is accessible?** I used clear labels, increased global font size, avoided color-only differences by relying on position and faceting, and applied a colorblind-aware palette.

-   **Who are the individuals and communities who might be impacted by your visualization?** LRT commuters whose travel time depends on direction and time of day, particularly those traveling during weekday peak or weekend service periods.

-   **How did you choose which features of your chosen dataset to include or exclude from your visualization?** I included time of day, weekday/weekend, direction, and average delay to highlight in-depth patterns in delay distributions.

-   **What ‘underwater labour’ contributed to your final data visualization product?** Collapsing hours into morning and afternoon, recoding direction labels, iterating on layout and color choices.
