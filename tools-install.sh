# Load environment variables from .env file
source .env

# Create a resource group (if not already created)
az group create --name "$resource_group_name" --location "$location"

# Create a storage account
az storage account create --name "$storage_account_name" --resource-group "$resource_group_name" --location "$location" --sku Standard_LRS

# Create a storage container for the state file
az storage container create --name "$container_name" --account-name "$storage_account_name"

# Register an app registration called "application" with a role base access control as "Contributor". Replace the "subscription_id" with your subscription id.
az ad sp create-for-rbac --name "$application_name" --role "$role" --scopes /subscriptions/"$subscription" --sdk-auth