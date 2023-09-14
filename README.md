# APPLICATION SETUP & VERIFICATION

All errors have been fixed, and all componets have been successfully deployed, i.e the infrastructure and the application. And the working application can be accessed [here](http://test-alb-1383658882.eu-west-1.elb.amazonaws.com:8080/).

![Login page](terraform-scenario-fo-finish/imgs/wp-login.png)


![Database verification page](terraform-scenario-fo-finish/imgs/wp-db.png)

This guide will walk you through the process of cloning the repository and running it on your local machine.

## Prerequisites
Before you begin, ensure you have the following prerequisites:

1. **Git**: Make sure Git is installed on your local machine. You can download it from [here](https://git-scm.com/).

2. **Terraform**: Install Terraform on your local machine by downloading it from [here](https://www.terraform.io/downloads.html).
   
3.  **AWS CLI**: Ensure you have AWS CLI installed and configured on your local machine by downloading it from [here](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).

## Clone The GitHub Repository

1. Open your terminal or command prompt.

2. Navigate to the directory where you want to clone the Terraform code repository. Use the `cd` command to change directories. For example, to clone into your home directory:

   ```shell
   cd ~
3. Clone the repo using 
   ```shell
        git clone https://github.com/TrinityWeaver/terraform-scenario-fo-finish/tree/david
## Set Up Terraform

1. Change into the directory of the cloned repository using the `cd` command:
   ```shell
      cd terraform-scenario-fo-finish
2. You will deploy the infrastructure first,you do that by navigating to the `vpc` folder, using 
    ```shell 
        cd vpc
3. Then initialize terraform in the project directory using:
    ```shell
        terraform init
    ```
    this command will download any necessary providers and intialize the working directory.
4. Review the Terraform plan to ensure expectations are met.
   ```shell
       terraform plan -var-file=your_variable_file
   ```
   this shows you what terraform will do without making the actual changes. Ensure to pass your variable file as stated `your_variable_file`.
5. If the above `plan` command is correct and meets expectations, you can go ahead to apply the  terraform configuration using:
   ```shell
       terraform apply -var-file=your_variable_file
   ```
   you might be propmted to confirm the changes, Enter `yes` to proceed.

6. When done with steps 1-5 you change the directory into the `application` directory and repeat the steps from `1-5`.
     
## Cleanup(Optional)

You can remove the resources created by terraform to avoid incuring cost, you can run:
```shell
    terraform destroy -var-file=your_variable_file
```
This command will prompt you to confirm the deletion of the resources, you can confirm by typing `yes`.

## Conclusion
You have successfully cloned the Terraform code repository from GitHub and set it up on your local machine. You can now use Terraform to manage and provision infrastructure resources defined in the code repository.

