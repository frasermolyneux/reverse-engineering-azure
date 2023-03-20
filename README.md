# Reverse Engineering Azure

This repository contains some end-to-end examples for reverse engineering resources from Azure; the focus is on the Bicep and Terraform approaches. To keep the example simple the workload that is being targetted is a storage account with a bunch of containers.

There are two "complete" examples within the `terraform` and `bicep` examples; this demo will perform a round-robin to allow a comparison. e.g. deploy through Bicep and then export and convert back to Bicep. That allows for an easy comparison.
