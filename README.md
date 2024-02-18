# Introduction 
This project is to demonstrate competence with Azure Devops Pipelines, bicep and pester testing. It deploys a static web app with a custom domain to  dev-test and staging-prod environments  

# Notes

- This project uses a static web app rather than a static site with storage account and CDN to simplify deployment and use the most current infrastructure. - The traffic splitting fuctionality in the Standard tier of Azure Static Web Apps would allow for a canary deployment strategy to be used, alongside the   native preview URL functionality. Static Web Apps have downtimeless deployment by default.
- The Pester tests are basic but functional. Sadly time contraints have prevented me from adding to them further before the deadline