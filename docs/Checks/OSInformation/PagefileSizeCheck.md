Pagefile Size Check
======

**Description:**

We check if the Pagefile is configured as recommended.

- **Exchange 2019**

Set the paging file minimum and maximum value to the same size: 25% of installed memory.

- **Exchange 2013/2016**

Set the paging file minimum and maximum value to the same size:
• Less than 32 GB of RAM installed: Physical RAM plus 10MB, up to a maximum value of 32GB (32,778MB).
• 32 GB of RAM or more installed: 32GB

**Included in HTML Report?**

Yes

**Additional resources:**

https://docs.microsoft.com/en-us/exchange/plan-and-deploy/system-requirements?view=exchserver-2019#hardware-requirements-for-exchange-2019

https://docs.microsoft.com/en-us/exchange/plan-and-deploy/system-requirements?view=exchserver-2016#hardware-requirements-for-exchange-2016