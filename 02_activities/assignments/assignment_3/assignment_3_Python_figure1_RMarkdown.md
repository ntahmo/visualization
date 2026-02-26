-   **What software did you use to create your data visualization?** Python, per assignment instructions and because it allows reproducibility of creating the figure.

-   **Who is your intended audience?** Transit planners and commuters interested in understanding patterns in service reliability to better plan their staffing and commute, respectively.

-   **What information or message are you trying to convey with your visualization?** That average LRT delays vary by hour of day and differ between weekdays and weekends: delays peak at 9 am and 7 pm, respectively.

-   **What aspects of design did you consider when making your visualization? How did you apply them? With what elements of your plots?** I used faceting to separate weekday and weekend patterns, shared axes to enable direct comparison, minimal styling to reduce cognitive load, and a figure-level footnote to communicate data source (substantial/reliable data).

-   **How did you ensure that your data visualizations are reproducible? If the tool you used to make your data visualization is not reproducible, how will this impact your data visualization?** The visualization is generated entirely through code, from data loading, to cleaning, to plotting, and exporting as an image. We expect identical results across runs of the code.

-   **How did you ensure that your data visualization is accessible?** I used a sans-serif font, kept a single color (accessible to color-blind individuals), provided clear labels and titles, and faceted the figure to minimize cognitive load.

-   **Who are the individuals and communities who might be impacted by your visualization?**\
    LRT commuters, especially those who need to get to work on time on weekdays or weekends. They can rely on off-peak hours to avoid delays.

-   **How did you choose which features of your chosen dataset to include or exclude from your visualization?** I included hour, weekday/weekend, transit line, and average delay to highlight variations over time and the average helps avert outlier affects to some extent.

-   **What ‘underwater labour’ contributed to your final data visualization product?** Cleaning and creating a composite time variable.
