Description: Using AWS Secrets Manager for sensitive data and configuring remote state storage using AWS secrets manager service by storing the secret in RDS database and configuring terraform state file to be stored in s3 bucket rather than it being stored Locally.

Benefits of Integrating AWS Secrets Manager with RDS:

- **Automatic Credential Management**: Amazon RDS automatically generates and secures master database credentials, so you don’t have to manage them manually.
- **Secure Storage**: RDS stores and manages database credentials securely in AWS Secrets Manager.
- **Automatic Credential Rotation**: RDS rotates database credentials regularly without needing any changes to your application.
- **Enhanced Security**: Secrets Manager protects database credentials from human access and keeps them hidden from plain view.
- **Easy Access Retrieval**: You can retrieve database credentials easily using Secrets Manager’s API or console.
- **Fine-Grained Access Control**: AWS Identity and Access Management (IAM) allows you to control who can access the credentials.
- **Separate Encryption**: You can use different AWS Key Management Service (KMS) keys to encrypt database credentials and database data separately.
- **Monitoring**: Track access to database credentials with AWS CloudTrail and Amazon CloudWatch for better auditing and monitoring.

**To create the secret using CLI:**
aws secretsmanager create-secret --name=my-database-password --secret-string="YourSecurePassword"

**To use this secret in terraform:**
data "aws_secretsmanager_secret_version" "database_password" {
  secret_id = "my-database-password"
}

To create RDS instance :- Refer main.tf file

To initialize the terraform repo use:
**terraform init**

To see the modification which will be done after applying the resource:
**terraform plan**

To apply the changes:
**terraform apply**

Conclusion:
After following the setup you will notice that :- 
The terraform state file is configured at s3 bucket rather than created locally.
Secrets manager service is integrated with RDS service to store the information that is important. (Here only the integration part is shown.)